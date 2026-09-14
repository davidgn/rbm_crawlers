import argparse
import httpx
from models import BookListing
from base_spider import BaseSpider

class BooksMandalaSpider(BaseSpider):
    """
    Books Mandala (booksmandala.com) — Nepal main-universe bookstore.
    
    Re-written to consume their Phoenix API backend directly, bypassing
    Cloudflare UI challenges and abandoning the slow Playwright strategy.
    """

    BASE_URL = "https://booksmandala.com"
    API_URL = "https://pheonix.booksmandala.com/api/v1/used-books?page={page}"

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept": "application/json",
        "Referer": "https://booksmandala.com/used-books"
    }

    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BooksMandala", territory="Nepal")
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        self.logger.info(f"Starting Books Mandala API harvest. limit_pages={self.limit_pages}")
        
        try:
            for page in range(1, self.limit_pages + 1):
                url = self.API_URL.format(page=page)
                self.logger.info(f"Fetching API page {page}: {url}")
                
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.warning(f"Failed to fetch {url} - Status {resp.status_code}")
                    break
                    
                data = resp.json()
                books = data.get("data", [])
                
                if not books:
                    self.logger.info(f"No more books found on page {page}.")
                    break
                    
                self.logger.info(f"Found {len(books)} books on page {page}")
                
                for b in books:
                    slug = b.get("slug")
                    if not slug:
                        continue
                        
                    authors = b.get("authors", [])
                    author_name = authors[0].get("name") if authors else None
                    
                    price = b.get("sales_price")
                    
                    listing = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=b.get("name"),
                        author=author_name,
                        isbn=b.get("barcode"),
                        price=str(price) if price is not None else None,
                        price_currency="NPR",
                        listing_url=f"{self.BASE_URL}/book/{slug}",
                        condition="Used" if b.get("is_used") else "New"
                    )
                    self.save_item(listing)
                    
                pagination = data.get("pagination", {})
                if not pagination.get("next"):
                    self.logger.info(f"Reached final API page.")
                    break

        except Exception as e:
            self.logger.error(f"Error during API crawl: {e}")
        finally:
            self.client.close()
            
        self.logger.info(f"Finished. {self.items_scraped} items added.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Books Mandala API spider")
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    BooksMandalaSpider(limit_pages=args.limit).run()
