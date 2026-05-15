import argparse
import json
import re
import time
from dataclasses import dataclass, field
from typing import Any
from urllib.parse import urljoin, urlparse

import httpx
from bs4 import BeautifulSoup

from base_spider import BaseSpider
from isbn_utils import extract_isbn, normalize_isbn
from models import BookListing


@dataclass(frozen=True)
class MarketplaceConfig:
    platform_name: str
    territory: str
    base_url: str
    browse_paths: tuple[str, ...]
    detail_signals: tuple[str, ...]
    exclude_signals: tuple[str, ...] = ()
    page_patterns: tuple[str, ...] = ("{url}?page={page}", "{url}&page={page}", "{url}/page/{page}/")
    headers: dict[str, str] = field(default_factory=dict)
    allowed_hosts: tuple[str, ...] = ()
    rendered: bool = False
    render_wait_ms: int = 5000
    render_timeout_ms: int = 45_000
    cloudscraper: bool = False
    curl_impersonate: str | None = None
    social_profile: bool = False
    link_fallback_on_detail_failure: bool = False


class ConfigurableMarketplaceSpider(BaseSpider):
    """Cache-first crawler for main-universe book marketplaces.

    This handles the long tail of SSR or semi-SSR marketplace pages where the
    first pass should preserve listing HTML and emit minimally structured rows.
    Richer per-site parsers can later be layered on top of the cached detail
    pages without re-crawling.
    """

    DEFAULT_HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "en-US,en;q=0.9",
    }

    SKIP_EXTENSIONS = (
        ".css",
        ".js",
        ".jpg",
        ".jpeg",
        ".png",
        ".gif",
        ".svg",
        ".webp",
        ".pdf",
    )

    def __init__(self, config: MarketplaceConfig, limit_pages: int = 3, limit_items: int = 50):
        super().__init__(platform_name=config.platform_name, territory=config.territory)
        self.config = config
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        headers = {**self.DEFAULT_HEADERS, **config.headers}
        timeout = httpx.Timeout(25.0, connect=8.0, read=15.0)
        self.client = httpx.Client(timeout=timeout, follow_redirects=True, headers=headers)
        self._playwright = None
        self._browser = None
        self._context = None
        self._cloudscraper = None

    def run(self):
        self.logger.info(
            "Starting %s harvest. limit_pages=%s limit_items=%s",
            self.platform_name,
            self.limit_pages,
            self.limit_items,
        )
        seen: set[str] = set()
        try:
            if self.config.social_profile:
                self._harvest_profile()
                return

            for browse_url in self._browse_urls():
                for page_num in range(1, self.limit_pages + 1):
                    if self.items_scraped >= self.limit_items:
                        return
                    page_url = self._page_url(browse_url, page_num)
                    html = self._fetch_text(page_url)
                    if not html:
                        break
                    self.cache_html(f"index_{self._safe_id(page_url)}", html, url=page_url)

                    links = self._extract_links(html, page_url, seen)
                    if not links and page_num == 1:
                        self._save_index_cards(html, page_url)
                    if not links:
                        break

                    for link in links:
                        if self.items_scraped >= self.limit_items:
                            return
                        seen.add(link)
                        self._harvest_item(link)
                        time.sleep(0.5)
        finally:
            self.client.close()
            self._close_browser()

        self.logger.info("Finished %s harvest. Saved %s items.", self.platform_name, self.items_scraped)

    def _browse_urls(self) -> list[str]:
        return [urljoin(self.config.base_url.rstrip("/") + "/", path.lstrip("/")) for path in self.config.browse_paths]

    def _page_url(self, browse_url: str, page_num: int) -> str:
        if page_num == 1:
            return browse_url
        for pattern in self.config.page_patterns:
            if "?" in browse_url and pattern == "{url}?page={page}":
                continue
            if "?" not in browse_url and pattern == "{url}&page={page}":
                continue
            return pattern.format(url=browse_url.rstrip("/"), page=page_num)
        return f"{browse_url}{'&' if '?' in browse_url else '?'}page={page_num}"

    def _fetch_text(self, url: str) -> str | None:
        if self.config.rendered:
            return self._fetch_rendered_text(url)
        if self.config.curl_impersonate:
            return self._fetch_curl_impersonate_text(url)
        if self.config.cloudscraper:
            return self._fetch_cloudscraper_text(url)
        try:
            response = self.client.get(url)
        except Exception as exc:
            self.logger.debug("Fetch failed for %s: %s", url, exc)
            return None
        if response.status_code != 200 or len(response.text) < 200:
            self.logger.debug("Skipping %s status=%s len=%s", url, response.status_code, len(response.text))
            return None
        return response.text

    def _fetch_curl_impersonate_text(self, url: str) -> str | None:
        try:
            from curl_cffi import requests as curl_requests

            response = curl_requests.get(
                url,
                headers=dict(self.client.headers),
                impersonate=self.config.curl_impersonate,
                timeout=25,
                allow_redirects=True,
            )
        except Exception as exc:
            self.logger.debug("Curl impersonate fetch failed for %s: %s", url, exc)
            return None
        if response.status_code != 200 or len(response.text) < 200:
            self.logger.debug("Skipping %s status=%s len=%s", url, response.status_code, len(response.text))
            return None
        return response.text

    def _fetch_cloudscraper_text(self, url: str) -> str | None:
        try:
            response = self._cloudscraper_session().get(url, timeout=25)
        except Exception as exc:
            self.logger.debug("Cloudscraper fetch failed for %s: %s", url, exc)
            return None
        if response.status_code != 200 or len(response.text) < 200:
            self.logger.debug("Skipping %s status=%s len=%s", url, response.status_code, len(response.text))
            return None
        return response.text

    def _cloudscraper_session(self):
        if self._cloudscraper is None:
            import cloudscraper

            self._cloudscraper = cloudscraper.create_scraper(
                browser={"browser": "chrome", "platform": "windows", "desktop": True}
            )
            self._cloudscraper.headers.update(
                {
                    key: value
                    for key, value in self.config.headers.items()
                    if key.lower() in {"accept-language", "referer"}
                }
            )
        return self._cloudscraper

    def _fetch_rendered_text(self, url: str) -> str | None:
        try:
            page = self._browser_context().new_page()
            page.goto(url, wait_until="domcontentloaded", timeout=self.config.render_timeout_ms)
            page.wait_for_timeout(self.config.render_wait_ms)
            html = page.content()
            page.close()
        except Exception as exc:
            self.logger.debug("Rendered fetch failed for %s: %s", url, exc)
            return None
        if len(html) < 200:
            return None
        return html

    def _browser_context(self):
        if self._context is None:
            from playwright.sync_api import sync_playwright

            self._playwright = sync_playwright().start()
            self._browser = self._playwright.chromium.launch(
                headless=True,
                args=["--disable-blink-features=AutomationControlled"],
            )
            self._context = self._browser.new_context(
                user_agent=self.client.headers.get("User-Agent", self.DEFAULT_HEADERS["User-Agent"]),
                viewport={"width": 1440, "height": 1200},
                locale="es-ES",
            )
        return self._context

    def _close_browser(self):
        if self._context is not None:
            self._context.close()
            self._context = None
        if self._browser is not None:
            self._browser.close()
            self._browser = None
        if self._playwright is not None:
            self._playwright.stop()
            self._playwright = None

    def _extract_links(self, html: str, page_url: str, seen: set[str]) -> list[str]:
        soup = BeautifulSoup(html, "html.parser")
        links: list[str] = []
        allowed_hosts = {
            urlparse(self.config.base_url).netloc.lower().removeprefix("www."),
            *(host.lower().removeprefix("www.") for host in self.config.allowed_hosts),
        }
        for anchor in soup.find_all("a", href=True):
            href = urljoin(page_url, anchor["href"]).split("#", 1)[0]
            parsed = urlparse(href)
            if parsed.scheme not in ("http", "https"):
                continue
            if parsed.path.lower().endswith(self.SKIP_EXTENSIONS):
                continue
            host = parsed.netloc.lower().removeprefix("www.")
            if host not in allowed_hosts:
                continue
            if href in seen:
                continue
            if any(signal.lower() in href.lower() for signal in self.config.exclude_signals):
                continue
            if any(signal.lower() in href.lower() for signal in self.config.detail_signals):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_profile(self):
        html = self._fetch_text(self.config.base_url)
        if not html:
            self.logger.warning("Could not fetch profile surface %s", self.config.base_url)
            return
        self.cache_html("profile", html, url=self.config.base_url)
        title = self._title_from_html(html) or self.platform_name
        self.save_item(
            BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=self.config.base_url,
                condition="Profile cached for manual/social extraction",
            )
        )

    def _harvest_item(self, url: str):
        html = self._fetch_text(url)
        if not html:
            self._save_link_fallback(url)
            return
        item_id = self._safe_id(url)
        self.cache_html(item_id, html, url=url)
        listing = self._listing_from_html(html, url)
        if listing:
            self.save_item(listing)
        else:
            self._save_link_fallback(url)

    def _save_link_fallback(self, url: str):
        if not self.config.link_fallback_on_detail_failure:
            return
        title = self._title_from_url(url)
        if not title:
            return
        self.save_item(
            BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=url,
                condition="Detail fetch failed; listing URL discovered from index",
            )
        )

    def _save_index_cards(self, html: str, page_url: str):
        soup = BeautifulSoup(html, "html.parser")
        title = self._title_from_soup(soup)
        if not title:
            return
        self.save_item(
            BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=page_url,
                condition="Index cached; no detail links detected",
            )
        )

    def _listing_from_html(self, html: str, url: str) -> BookListing | None:
        soup = BeautifulSoup(html, "html.parser")
        data = self._jsonld_book_or_product(soup)
        title = self._pick_text(data, "name", "headline") or self._title_from_soup(soup)
        if not title:
            return None

        offers = data.get("offers") if isinstance(data.get("offers"), dict) else {}
        price = self._pick_text(offers, "price")
        currency = self._pick_text(offers, "priceCurrency")
        if price and currency and currency not in price:
            price = f"{price} {currency}"

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=self._person_text(data.get("author")),
            isbn=self._isbn_from_soup(soup, data),
            publisher=self._person_text(data.get("publisher")),
            publication_year=self._pick_text(data, "datePublished"),
            binding=self._normalize_schema_value(self._pick_text(data, "bookFormat")),
            condition=self._normalize_schema_value(
                self._pick_text(offers, "itemCondition") or self._meta_content(soup, "product:condition")
            ),
            price=price or self._meta_content(soup, "product:price:amount"),
            listing_url=url,
            seller_comments=self._pick_text(data, "description"),
        )

    def _jsonld_book_or_product(self, soup: BeautifulSoup) -> dict[str, Any]:
        for script in soup.find_all("script", type="application/ld+json"):
            raw = script.string or script.get_text()
            if not raw.strip():
                continue
            try:
                payload = json.loads(raw)
            except json.JSONDecodeError:
                continue
            for node in self._flatten_jsonld(payload):
                node_type = node.get("@type")
                types = node_type if isinstance(node_type, list) else [node_type]
                if any(str(t).lower() in {"book", "product"} for t in types):
                    return node
        return {}

    def _flatten_jsonld(self, payload: Any) -> list[dict[str, Any]]:
        if isinstance(payload, dict):
            nodes = [payload] if "@type" in payload else []
            graph = payload.get("@graph")
            if isinstance(graph, list):
                nodes.extend(node for node in graph if isinstance(node, dict))
            return nodes
        if isinstance(payload, list):
            return [node for node in payload if isinstance(node, dict)]
        return []

    def _title_from_html(self, html: str) -> str | None:
        return self._title_from_soup(BeautifulSoup(html, "html.parser"))

    def _title_from_soup(self, soup: BeautifulSoup) -> str | None:
        for selector in ("h1", "[property='og:title']", "title"):
            node = soup.select_one(selector)
            if not node:
                continue
            text = node.get("content") if node.name == "meta" else node.get_text(" ", strip=True)
            if text:
                return re.sub(r"\s+", " ", text).strip()
        return None

    def _meta_content(self, soup: BeautifulSoup, prop: str) -> str | None:
        node = soup.find("meta", attrs={"property": prop}) or soup.find("meta", attrs={"name": prop})
        if not node:
            return None
        value = node.get("content")
        return value.strip() if isinstance(value, str) and value.strip() else None

    def _isbn_from_soup(self, soup: BeautifulSoup, data: dict[str, Any]) -> str | None:
        candidates = [
            self._pick_text(data, "isbn", "isbn13", "isbn10", "gtin13", "gtin"),
            self._meta_content(soup, "book:isbn"),
            self._meta_content(soup, "product:isbn"),
            soup.find("link", rel="canonical").get("href") if soup.find("link", rel="canonical") else None,
        ]
        for selector in (
            "[itemprop='isbn']",
            "[itemprop='gtin13']",
            "[itemprop='sku']",
            "meta[name='isbn']",
            "meta[property='isbn']",
        ):
            node = soup.select_one(selector)
            if node:
                candidates.append(node.get("content") if node.name == "meta" else node.get_text(" ", strip=True))

        for candidate in candidates:
            isbn = normalize_isbn(candidate)
            if isbn:
                return isbn
        return extract_isbn(soup)

    # Maps trailing fragment of schema.org condition/binding URLs to readable labels
    _SCHEMA_LABELS: dict[str, str] = {
        "usedcondition": "Used",
        "newcondition": "New",
        "refurbishedcondition": "Refurbished",
        "damagedcondition": "Damaged",
        "hardcover": "Hardcover",
        "paperback": "Paperback",
        "ebook": "eBook",
        "audiobook": "Audiobook",
        "graphicnovel": "Graphic Novel",
    }

    def _normalize_schema_value(self, value: str | None) -> str | None:
        if not value:
            return None
        key = value.rstrip("/").rsplit("/", 1)[-1].lower()
        return self._SCHEMA_LABELS.get(key, value)

    def _pick_text(self, data: dict[str, Any], *keys: str) -> str | None:
        for key in keys:
            value = data.get(key)
            text = self._person_text(value)
            if text:
                return text
        return None

    def _person_text(self, value: Any) -> str | None:
        if value in (None, "", []):
            return None
        if isinstance(value, str):
            return re.sub(r"\s+", " ", value).strip()
        if isinstance(value, dict):
            for key in ("name", "title", "@id"):
                if value.get(key):
                    return self._person_text(value[key])
            return None
        if isinstance(value, list):
            parts = [self._person_text(item) for item in value]
            return ", ".join(part for part in parts if part) or None
        return str(value)

    def _safe_id(self, value: str) -> str:
        parsed = urlparse(value)
        raw = f"{parsed.netloc}_{parsed.path}_{parsed.query}".strip("_") or value
        return re.sub(r"[^a-zA-Z0-9_-]+", "_", raw).strip("_")[:120] or str(int(time.time()))

    def _title_from_url(self, url: str) -> str | None:
        parsed = urlparse(url)
        slug = parsed.path.rstrip("/").rsplit("/", 1)[-1]
        slug = re.sub(r"\.(html?|aspx?|php)$", "", slug, flags=re.IGNORECASE)
        slug = re.sub(r"[-_]+", " ", slug).strip()
        return slug.title() if slug else None


def run_configured_spider(config: MarketplaceConfig, description: str):
    parser = argparse.ArgumentParser(description=description)
    parser.add_argument("--limit-pages", type=int, default=3)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    ConfigurableMarketplaceSpider(config, limit_pages=args.limit_pages, limit_items=args.limit_items).run()
