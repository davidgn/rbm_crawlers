import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider


class KyoboSpider(BaseSpider):
    """
    교보문고 / Kyobo Bookstore (kyobobook.co.kr) — South Korea main-universe.

    Kyobo is one of South Korea's three dominant online-book retailers.  It
    combines retail with a used-book (중고도서) section accessible via a
    separate subdomain: used.kyobobook.co.kr.

    Used-book listing URL:
      https://used.kyobobook.co.kr/product/productList.ink
        ?orderClick=LAG&mallGb=KOR&linkClass=&pageNumber=N&pageSize=20

    Detail URL pattern:
      https://used.kyobobook.co.kr/product/viewProductDetail.ink?barcode=XXXX

    httpx is tried first; fall back note: if pages render empty the site may
    require session cookies from a prior homepage visit — run with
    --playwright flag if that happens (not yet implemented; add if needed).
    """

    BASE_URL  = "https://used.kyobobook.co.kr"
    LIST_URL  = (
        "https://used.kyobobook.co.kr/product/productList.ink"
        "?orderClick=LAG&mallGb=KOR&linkClass=&pageNumber={page}&pageSize=20"
    )

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ko-KR,ko;q=0.9,en;q=0.8",
        "Referer": "https://used.kyobobook.co.kr/",
    }

    def __init__(self, limit_pages=200):
        super().__init__(platform_name="Kyobo", territory="South Korea")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting Kyobo used-book harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            for pg_num in range(1, self.limit_pages + 1):
                url = self.LIST_URL.format(page=pg_num)
                self.logger.info(f"Listing page {pg_num}: {url}")

                try:
                    resp = self.client.get(url)
                    resp.raise_for_status()
                except Exception as e:
                    self.logger.error(f"Listing fetch failed: {e}")
                    break

                soup = BeautifulSoup(resp.text, "html.parser")
                detail_links = self._extract_detail_links(soup, seen)

                if not detail_links:
                    self.logger.info(f"No new listings on page {pg_num} — done.")
                    break

                self.logger.info(f"Found {len(detail_links)} new listings.")
                for link in detail_links:
                    seen.add(link)
                    self._harvest_item(link)
                    time.sleep(0.6)

        finally:
            self.client.close()

        self.logger.info(f"Finished. {self.items_scraped} items cached.")

    def _extract_detail_links(self, soup: BeautifulSoup, seen: set) -> list[str]:
        links = []
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if "viewProductDetail" in href or "barcode=" in href:
                full = href if href.startswith("http") else urljoin(self.BASE_URL, href)
                if full not in seen:
                    links.append(full)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        m = re.search(r"barcode=([^&]+)", url)
        item_id = m.group(1) if m else re.sub(r"[^a-zA-Z0-9_-]", "_", url)[-60:]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1") or soup.find("p", class_=re.compile(r"title|book_tit", re.I))
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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Kyobo 교보문고 used-books (South Korea) cache-first spider")
    parser.add_argument("--limit", type=int, default=200,
                        help="Max listing pages (default: 200)")
    args = parser.parse_args()
    KyoboSpider(limit_pages=args.limit).run()
