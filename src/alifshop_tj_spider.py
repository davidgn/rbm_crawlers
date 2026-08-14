import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class AlifshopTjSpider(BaseSpider):
    """
    HTML catalog spider for Alif Shop Tajikistan (alifshop.tj) —
    Tajikistan's premier online shopping platform and bookstore in Dushanbe (prices in TJS).
    Tajikistan outbound M-Bag: low cost origin.
    """
    BASE_URL = "https://alifshop.tj"
    CATEGORIES = [
        "/category/knigi?cityId=1",
        "/category/knigi?cityId=1&page=2",
        "/category/knigi?cityId=1&page=3",
    ]

    def __init__(self, limit_pages: int = 10):
        super().__init__(platform_name="Alif Shop Tajikistan", territory="Tajikistan")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })

    def run(self):
        self.logger.info("Starting Alif Shop Tajikistan crawler.")
        seen_urls = set()

        for cat_path in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}{cat_path}" if cat_path.startswith('/') else cat_path
            self.logger.info(f"Fetching category: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                product_links = set()
                for a in soup.find_all("a", href=True):
                    href = a["href"]
                    if "/product/" in href:
                        clean_href = href.split("?")[0]
                        if clean_href.startswith("http"):
                            product_links.add(clean_href)
                        else:
                            product_links.add(f"{self.BASE_URL}{clean_href if clean_href.startswith('/') else '/' + clean_href}")

                for item_url in list(product_links)[:10]:
                    if item_url in seen_urls:
                        continue
                    seen_urls.add(item_url)

                    try:
                        p_resp = self.session.get(item_url, timeout=15)
                        if p_resp.status_code != 200:
                            continue

                        p_soup = BeautifulSoup(p_resp.text, "html.parser")
                        h1 = p_soup.find("h1")
                        title = h1.get_text(strip=True) if h1 else None
                        if not title:
                            continue

                        # Extract price in TJS (Somoni, looking for 'с.')
                        page_text = p_soup.get_text()
                        price_str = None
                        price_match = re.search(r"(\d+(?:[ \t\xa0]\d+)*)\s*с\.", page_text)
                        if price_match:
                            raw_p = price_match.group(1).replace(" ", "").replace("\t", "").replace("\xa0", "").strip()
                            try:
                                val = float(raw_p)
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            price=price_str,
                            price_currency="TJS",
                            listing_url=item_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching item {item_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Alif Shop Tajikistan. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Alif Shop Tajikistan spider")
    parser.add_argument("--limit-pages", type=int, default=2)
    args = parser.parse_args()
    AlifshopTjSpider(limit_pages=args.limit_pages).run()
