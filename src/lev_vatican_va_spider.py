import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class LevVaticanVaSpider(BaseSpider):
    """
    PrestaShop catalog spider for Libreria Editrice Vaticana (libreriaeditricevaticana.va) —
    the official publishing house and bookstore of the Holy See / Vatican City State.
    Vatican outbound M-Bag: RG5 low cost origin.
    """
    BASE_URL = "https://www.libreriaeditricevaticana.va"
    CATEGORIES = [
        "/en/",
        "/en/23-canon-law",
        "/en/176-art-and-archeology",
        "/en/175-literature",
        "/en/54-biographies-and-studies",
        "/en/41-meditations",
        "/en/292-catechismi",
    ]

    def __init__(self, limit_pages: int = 15):
        super().__init__(platform_name="Libreria Editrice Vaticana", territory="Holy See")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })
        self.session.verify = False

    def run(self):
        self.logger.info("Starting Libreria Editrice Vaticana crawler.")
        
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
                    if re.search(r"/\d+-[a-z0-9\-]+\.html$", href):
                        if href.startswith("http"):
                            product_links.add(href)
                        else:
                            product_links.add(f"{self.BASE_URL}{href if href.startswith('/') else '/' + href}")

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

                        # Extract price in EUR
                        price_str = None
                        price_span = p_soup.find("span", id="our_price_display") or p_soup.find("span", class_="price")
                        if price_span:
                            p_text = price_span.get_text(strip=True)
                            p_match = re.search(r"([\d\.\,]+)", p_text)
                            if p_match:
                                raw_price = p_match.group(1).replace(",", ".")
                                try:
                                    val = float(raw_price)
                                    if val > 0:
                                        price_str = str(val)
                                except ValueError:
                                    pass

                        item = BookListing(
                            territory=self.territory,
                            platform=self.platform_name,
                            title=title,
                            price=price_str,
                            price_currency="EUR",
                            listing_url=item_url,
                            condition="New",
                        )
                        self.save_item(item)

                    except Exception as ie:
                        self.logger.error(f"Error fetching item {item_url}: {ie}")

            except Exception as e:
                self.logger.error(f"Error fetching category {cat_url}: {e}")

        self.logger.info(f"Finished Libreria Editrice Vaticana. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Libreria Editrice Vaticana spider")
    parser.add_argument("--limit-pages", type=int, default=3)
    args = parser.parse_args()
    LevVaticanVaSpider(limit_pages=args.limit_pages).run()
