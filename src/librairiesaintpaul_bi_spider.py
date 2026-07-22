import re
import httpx
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class LibrairieSaintPaulBiSpider(BaseSpider):
    """
    Spider for Librairie Saint-Paul de Bujumbura (Burundi).
    Uses POST request to search endpoint and scrapes products.
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(platform_name="Librairie Saint Paul", territory="Burundi")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self, search_term: str = "saint"):
        self.logger.info(f"Starting harvest for Librairie Saint-Paul. Query: {search_term}")
        try:
            # We send a POST request with the search term
            resp = self.client.post("https://www.librairiesaintpaul.bi/?fr/search", data={"searchx": search_term})
            if resp.status_code != 200:
                self.logger.error(f"Search request failed: status {resp.status_code}")
                return

            soup = BeautifulSoup(resp.text, 'html.parser')
            items = soup.select("div#rrx")
            
            for item in items:
                title_el = item.select_one("div#sr2 a")
                price_el = item.select_one("div#sr2 b")
                
                title = title_el.text.strip() if title_el else None
                if not title or len(title) < 3:
                    continue
                    
                price_val = None
                if price_el:
                    # e.g., "30 000 Fbu" -> "30000"
                    match = re.search(r"[\d\s]+", price_el.text.strip())
                    if match:
                        price_val = match.group(0).replace(" ", "")
                
                relative_url = title_el['href'] if title_el and title_el.has_attr('href') else None
                listing_url = urljoin("https://www.librairiesaintpaul.bi", relative_url) if relative_url else "https://www.librairiesaintpaul.bi/"
                
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    price=price_val,
                    price_currency="BIF",
                    listing_url=listing_url
                )
                self.save_item(book)
                
        except Exception as e:
            self.logger.error(f"Error crawling Librairie Saint-Paul: {e}")
        finally:
            self.client.close()

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="saint")
    args = parser.parse_args()

    spider = LibrairieSaintPaulBiSpider()
    spider.run(args.query)
