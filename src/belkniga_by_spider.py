import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BelknigaBySpider(BaseSpider):
    """
    1C-Bitrix catalog spider for Belkniga (belkniga.by) —
    Belarus's largest national state bookstore chain (180,000+ titles in BYN).
    Belarus outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://belkniga.by"
    CATEGORIES = [
        "/catalog/belorusskaya_sots_znachimaya_lite/belorusskaya-hudozhestvennaya-lit/",
        "/catalog/khudozhestvennaya/klassicheskaya_literatura/",
        "/catalog/khudozhestvennaya/istoricheskie-romany/",
        "/catalog/khudozhestvennaya/poeziya/",
        "/catalog/biznes-literatura/ekonomika/",
        "/catalog/literatura_dlya_detey_i_yunoshestva/skazki2/",
        "/catalog/luchshie-predlojenia-beloriskih-izdatilstv/hudojistvennia-literatura/",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="Belkniga", territory="Belarus")
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
        self.logger.info(f"Starting Belkniga Belarus crawler. Limit: {self.limit_pages} categories.")
        
        seen_urls = set()

        for cat_path in self.CATEGORIES[:self.limit_pages]:
            cat_url = f"{self.BASE_URL}{cat_path}"
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
                    if href.startswith("/catalog/") and href.count("/") >= 4 and not href.endswith("/"):
                        product_links.add(f"{self.BASE_URL}{href}")
                    elif href.startswith("/catalog/") and href.count("/") >= 4 and href != cat_path:
                        product_links.add(f"{self.BASE_URL}{href if href.endswith('/') else href + '/'}")

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

                        # Extract price in BYN
                        price_str = None
                        price_match = re.search(r"([\d\.\,\s]+)\s*(?:BYN|руб)", p_resp.text, re.IGNORECASE)
                        if price_match:
                            raw_price = price_match.group(1).replace(" ", "").replace(",", ".")
                            try:
                                val = float(raw_price)
                                if val > 0:
                                    price_str = str(val)
                            except ValueError:
                                pass

                        # Extract author / publisher / ISBN if present
                        author = None
                        isbn = None
                        for tr in p_soup.find_all("tr"):
                            text = tr.get_text(strip=True)
                            if "Автор" in text:
                                author = text.replace("Автор", "").strip(" —:-")
                            elif "ISBN" in text:
                                isbn = text.replace("ISBN", "").strip(" —:-")

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            author=author,
                            price=price_str,
                            price_currency="BYN",
                            isbn=isbn,
                            listing_url=item_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching item {item_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Belkniga. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Belkniga Belarus bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=3)
    args = parser.parse_args()
    BelknigaBySpider(limit_pages=args.limit_pages).run()
