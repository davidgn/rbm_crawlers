import argparse
import re
import time
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider


class AladinSpider(BaseSpider):
    """
    알라딘 / Aladin (aladin.co.kr) — South Korea main-universe used-book marketplace.

    Aladin is South Korea's premier used-book marketplace.  The 중고샵
    (used-book shop) has its own dedicated listing surface separate from new
    books.  httpx works for the listing pages (server-rendered HTML); detail
    pages are also server-rendered.

    Listing URL:
      https://www.aladin.co.kr/shop/usedshop/wuseditemall.aspx
        ?SearchTarget=usedBook&CategoryId=0&start=N   (N = 0, 50, 100, …)

    Detail URL pattern:
      https://www.aladin.co.kr/shop/usedshop/wuseditemdetail.aspx?ItemId=XXXXX

    Category prioritisation: foreign/English (CategoryId=74) first,
    then all categories (CategoryId=0).
    """

    BASE_URL   = "https://www.aladin.co.kr"
    LIST_URL   = (
        "https://www.aladin.co.kr/shop/usedshop/wuseditemall.aspx"
        "?SearchTarget=usedBook&CategoryId={cat_id}&start={start}&SortOrder=1"
    )
    PAGE_SIZE  = 50   # items per page on the listing surface

    CATEGORIES = [
        {"name": "Foreign/English", "cat_id": 74},
        {"name": "All",             "cat_id": 0},
        {"name": "Humanities",      "cat_id": 1},
        {"name": "Science/Tech",    "cat_id": 4},
    ]

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept-Language": "ko-KR,ko;q=0.9,en;q=0.8",
        "Referer": "https://www.aladin.co.kr/",
    }

    def __init__(self, limit_pages=100):
        super().__init__(platform_name="Aladin", territory="South Korea")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, follow_redirects=True, headers=self.HEADERS
        )

    def run(self):
        self.logger.info(
            f"Starting Aladin harvest (cache-first). limit_pages={self.limit_pages}"
        )
        seen: set[str] = set()

        try:
            for cat in self.CATEGORIES:
                self.logger.info(f"=== Category: {cat['name']} (id={cat['cat_id']}) ===")
                for pg_num in range(self.limit_pages):
                    start = pg_num * self.PAGE_SIZE
                    url = self.LIST_URL.format(cat_id=cat["cat_id"], start=start)
                    self.logger.info(f"Listing page {pg_num + 1}: {url}")

                    try:
                        resp = self.client.get(url)
                        resp.raise_for_status()
                    except Exception as e:
                        self.logger.error(f"Failed to fetch listing page: {e}")
                        break

                    soup = BeautifulSoup(resp.text, "html.parser")
                    detail_links = self._extract_detail_links(soup, seen)

                    if not detail_links:
                        self.logger.info(f"No new listings at start={start} — done with category.")
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
            if "wuseditemdetail" in href or "ItemId=" in href:
                full = href if href.startswith("http") else self.BASE_URL + href
                if full not in seen:
                    links.append(full)
        return list(dict.fromkeys(links))

    def _harvest_item(self, url: str):
        # ItemId is the stable cache key
        m = re.search(r"ItemId=(\d+)", url)
        item_id = m.group(1) if m else re.sub(r"[^a-zA-Z0-9_-]", "_", url)[-60:]

        try:
            self.logger.info(f"Harvesting: {url}")
            resp = self.client.get(url)
            if resp.status_code != 200 or len(resp.text) < 500:
                self.logger.warning(f"Bad response ({resp.status_code}) for {url}")
                return

            self.cache_html(item_id, resp.text, url=url)

            soup = BeautifulSoup(resp.text, "html.parser")
            h1 = soup.find("h1") or soup.find("div", class_=re.compile(r"title|book_name", re.I))
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
    parser = argparse.ArgumentParser(description="Aladin 알라딘 (South Korea) cache-first spider")
    parser.add_argument("--limit", type=int, default=100,
                        help="Max listing pages per category (default: 100)")
    args = parser.parse_args()
    AladinSpider(limit_pages=args.limit).run()
