import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urlencode, urljoin, urlparse, parse_qs
from models import BookListing
from base_spider import BaseSpider


class NadirKitapSpider(BaseSpider):
    """
    Nadir Kitap (nadirkitap.com) — Turkey main-universe used/rare book marketplace.

    Turkey's largest used, antiquarian, and rare book marketplace with millions
    of listings from thousands of dealers.  Captures ISBNs, pricing, condition,
    and bibliographic metadata.

    httpx + BeautifulSoup (server-rendered).
    APK-confirmed search route:
    /kitapara_sonuc.php?kelime=...

    APK-confirmed detail route:
    /kitap-detay.php?kid=...
    """

    BASE_URL = "https://www.nadirkitap.com"
    SEARCH_PATH = "/kitapara_sonuc.php"
    DETAIL_PATH = "/kitap-detay.php"
    SELLER_PATH_SIGNALS = ("/sahaf-detay.php", "/sahaflar.php")
    DETAIL_SIGNALS = ("/kitap-detay.php",)
    EMAIL_RE = re.compile(r"[\w.+-]+@[\w.-]+\.[A-Za-z]{2,}")
    CONTACT_LINE_RE = re.compile(
        r"(?im)(telefon|tel\.?|gsm|cep|whatsapp|e-?posta|email)\s*[:：]?\s*[^<\n\r]{3,80}"
    )

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "tr-TR,tr;q=0.9,en;q=0.8",
    }

    def __init__(self, limit_pages=100, query: str = "kitap"):
        super().__init__(platform_name="Nadir Kitap", territory="Turkey")
        self.limit_pages = limit_pages
        self.query = query
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting Nadir Kitap harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            browse_url = self._search_url(self.query)

            for pg_num in range(1, self.limit_pages + 1):
                urls_to_try = (
                    [
                        f"{browse_url}&sayfa={pg_num}",
                        f"{browse_url}&page={pg_num}",
                    ]
                    if pg_num > 1
                    else [browse_url]
                )

                html, used_url = None, browse_url
                for candidate in urls_to_try:
                    try:
                        resp = self.client.get(candidate)
                        if resp.status_code == 200 and len(resp.text) > 500:
                            html, used_url = resp.text, candidate
                            break
                        if resp.status_code in (404, 410):
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
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.7)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _search_url(self, query: str) -> str:
        return f"{self.BASE_URL}{self.SEARCH_PATH}?{urlencode({'kelime': query})}"

    def _extract_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = urljoin(self.BASE_URL, a["href"])
            parsed = urlparse(href)
            if (
                parsed.netloc == "www.nadirkitap.com"
                and parsed.path == self.DETAIL_PATH
                and "kid" in parse_qs(parsed.query)
                and href not in seen
                and not self._is_seller_url(href)
            ):
                links.append(href)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        item_id = self._item_id_from_url(url)

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, self._redacted_cache_html(resp.text), url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1")
            title = h1.get_text(strip=True) if h1 else "Cached Item"

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                listing_url=url,
                condition="Cached for AI extraction",
            ))
        except Exception as e:
            self.logger.error(f"Error harvesting {url}: {e}")

    def _item_id_from_url(self, url: str) -> str:
        parsed = urlparse(url)
        kid = parse_qs(parsed.query).get("kid", [""])[0]
        if kid:
            return f"kitap_detay_{re.sub(r'[^0-9A-Za-z_-]', '_', kid)[:64]}"
        slug = next(
            (s for s in reversed(parsed.path.rstrip("/").split("/")) if s and s != "#"),
            str(int(time.time())),
        )
        return re.sub(r"[^a-zA-Z0-9_-]", "_", slug)[:80]

    def _is_seller_url(self, url: str) -> bool:
        return any(signal in url for signal in self.SELLER_PATH_SIGNALS)

    def _redacted_cache_html(self, html: str) -> str:
        soup = BeautifulSoup(html, "html.parser")
        for link in soup.find_all("a", href=True):
            href = link["href"].strip().lower()
            if href.startswith(("mailto:", "tel:", "sms:", "whatsapp:")):
                link["href"] = "#redacted-contact"
                link.string = "[redacted-contact]"

        redacted = str(soup)
        redacted = self.EMAIL_RE.sub("[redacted-email]", redacted)
        return self.CONTACT_LINE_RE.sub(r"\1: [redacted-contact]", redacted)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Nadir Kitap Turkey cache-first spider")
    parser.add_argument("--limit", type=int, default=100)
    parser.add_argument("--query", default="kitap")
    args = parser.parse_args()
    NadirKitapSpider(limit_pages=args.limit, query=args.query).run()
