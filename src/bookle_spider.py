import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from types import SimpleNamespace
from urllib.parse import urljoin
from base_spider import BaseSpider
from isbn_utils import extract_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="Bookle", territory="South Africa")


class BookleSpider(BaseSpider):
    """
    Bookle (bookle.co.za) — South Africa main-universe used-book marketplace.

    Peer-to-peer used-book buy/sell/exchange platform serving South African
    readers.  Captures ISBNs, pricing, condition, and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    Browse paths probed at startup.  Pagination: ?page=N.
    """

    BASE_URL = "https://bookle.co.za"

    BROWSE_CANDIDATES = [
        "/books",
        "/listings",
        "/browse",
        "/shop",
        "/search",
        "/all-books",
        "",
    ]
    DETAIL_SIGNALS = ["/book/", "/listing/", "/product/", "/item/", "/books/"]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "en-ZA,en;q=0.9",
    }

    def __init__(self, limit_pages=100, limit_items=50):
        super().__init__(platform_name="Bookle", territory="South Africa")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def _get_robust_response(self, url, params=None, max_retries=3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url, params=params)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        self.logger.info(
            f"Starting Bookle harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._find_browse_url()

            for pg_num in range(1, self.limit_pages + 1):
                urls_to_try = (
                    [
                        f"{browse_url.rstrip('/')}/page/{pg_num}/",
                        f"{browse_url}{'&' if '?' in browse_url else '?'}page={pg_num}",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    try:
                        resp = self._get_robust_response(candidate)
                        if resp and resp.status_code == 200 and len(resp.text) > 500:
                            html, used_url = resp.text, candidate
                            break
                        if resp and resp.status_code in (404, 410):
                            break
                    except Exception as e:
                        self.logger.debug(f"Fetch error for {candidate}: {e}")

                if not html:
                    self.logger.info(f"No content on page {pg_num} — done.")
                    break

                self.logger.info(f"Index page {pg_num}: {used_url}")
                soup = BeautifulSoup(html, "html.parser")
                book_links = self._extract_links(soup, seen)

                if not book_links:
                    self.logger.info(f"No new links on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(book_links)} new links.")
                for link in book_links:
                    if self.items_scraped >= self.limit_items:
                        return
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.7)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _find_browse_url(self) -> str:
        for path in self.BROWSE_CANDIDATES:
            candidate = self.BASE_URL + path
            try:
                resp = self._get_robust_response(candidate)
                if resp and resp.status_code == 200:
                    soup = BeautifulSoup(resp.text, "html.parser")
                    hrefs = [a.get("href", "") for a in soup.find_all("a", href=True)]
                    if any(sig in (h or "") for h in hrefs for sig in self.DETAIL_SIGNALS):
                        self.logger.info(f"Browse URL confirmed: {candidate}")
                        return candidate
            except Exception as e:
                self.logger.debug(f"Candidate {path} failed: {e}")
        self.logger.warning("No browse path matched — using homepage.")
        return self.BASE_URL

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            if (
                self.BASE_URL in href
                and any(sig in href for sig in self.DETAIL_SIGNALS)
                and href not in seen
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        slug = next(
            (s for s in reversed(url.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time()))
        )
        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self._get_robust_response(url)
            if not resp or resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            price = None
            price_currency = None
            price_node = soup.select_one(".price, .amount, [itemprop='price'], [class*='price']")
            if price_node:
                raw_price = re.sub(r"[^\d.,]", "", price_node.get_text()).strip()
                if raw_price:
                    price = raw_price
                    price_currency = "ZAR"

            author = None
            author_node = soup.select_one("[itemprop='author'], .author, [class*='author']")
            if author_node:
                author = author_node.get_text(strip=True)

            category = None
            cat_node = soup.select_one(".posted_in, .breadcrumb, [class*='category']")
            if cat_node:
                category = cat_node.get_text(", ", strip=True)

            comments = None
            desc_node = soup.select_one(".description, [itemprop='description'], #tab-description, [class*='description']")
            if desc_node:
                comments = desc_node.get_text(" ", strip=True)[:500]

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                isbn=extract_isbn(soup),
                category=category,
                price=price,
                price_currency=price_currency,
                listing_url=url,
                condition="Cached for AI extraction",
                seller_comments=comments,
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bookle South Africa cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    BookleSpider(limit_pages=args.limit_pages or args.limit, limit_items=args.limit_items).run()
