import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BukinistAlSpider(BaseSpider):
    """
    PrestaShop catalog spider for Bukinist Albania (bukinist.al) —
    Albania's leading online bookstore for Albanian and international literature.
    Albania outbound M-Bag: $18.38 USD / 30 kg to US.
    """
    BASE_URL = "https://bukinist.al"
    CATEGORIES = [
        "sq/35-histori",
        "sq/78-gjuhet-e-huaja",
        "54-per-femije",
        "sq/224-rekomandime",
        "sq/79-informatike",
        "sq/155-edukim-didaktike",
        "sq/119-sipas-vitit",
        "sq/29-111-vjet-shqiperi-111-libra",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="Bukinist Albania", territory="Albania")
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
        self.logger.info(f"Starting Bukinist Albania crawler. Limit: {self.limit_pages} categories/pages.")
        
        seen_urls = set()

        for cat in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}/{cat}"
            self.logger.info(f"Fetching category {cat}: {cat_url}")
            try:
                resp = self.session.get(cat_url, timeout=20)
                if resp.status_code != 200:
                    self.logger.warning(f"Got status {resp.status_code} for {cat_url}")
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                products = soup.select(".product-container, .product-miniature, .ajax_block_product")

                for p in products:
                    name_el = p.select_one(".product-name a, .product-title a, h5 a, a.product-name") or p.select_one(".product-name, .product-title, h5")
                    if not name_el:
                        continue

                    title = name_el.get_text(strip=True)
                    a_el = name_el if name_el.name == "a" else name_el.find("a")
                    href = a_el.get("href", "") if a_el else ""
                    if not href:
                        continue

                    full_url = f"{self.BASE_URL}{href}" if href.startswith("/") else href
                    if full_url in seen_urls:
                        continue
                    seen_urls.add(full_url)

                    # Extract price
                    price_val = None
                    price_el = p.select_one(".price, .product-price")
                    if price_el:
                        price_text = price_el.get_text(strip=True)
                        match = re.search(r"(\d[\d\s]*\d|\d)", price_text)
                        if match:
                            price_val = match.group(1).replace(" ", "")

                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        price=price_val,
                        price_currency="ALL",
                        listing_url=full_url,
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching category {cat}: {e}")

        self.logger.info(f"Finished Bukinist Albania. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Bukinist Albania bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=10)
    args = parser.parse_args()
    BukinistAlSpider(limit_pages=args.limit_pages).run()
