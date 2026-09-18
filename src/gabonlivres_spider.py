import argparse
import httpx
from models import BookListing
from base_spider import BaseSpider

class GabonLivresSpider(BaseSpider):
    """
    Gabon Livres (gabonlivres.com) — Gabon digital/online bookshop.
    
    Re-written to consume their new Next.js internal /api/books API.
    Captures pricing, authors, and bibliographic metadata directly from JSON.
    """

    BASE_URL = "https://gabonlivres.com"
    API_URL = "https://gabonlivres.com/api/books?limit=500&page={page}"

    HEADERS = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept": "application/json",
        "Referer": "https://gabonlivres.com/catalogue"
    }

    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name="Gabon Livres", territory="Gabon")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers=self.HEADERS)

    def run(self):
        self.logger.info(f"Starting Gabon Livres API harvest. limit_pages={self.limit_pages}")
        
        try:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                url = self.API_URL.format(page=page)
                self.logger.info(f"Fetching API page {page}: {url}")
                
                resp = self.client.get(url)
                if resp.status_code != 200:
                    self.logger.warning(f"Failed to fetch {url} - Status {resp.status_code}")
                    break
                    
                data = resp.json()
                books = data.get("books", [])
                
                if not books:
                    self.logger.info(f"No more books found on page {page}.")
                    break
                    
                self.logger.info(f"Found {len(books)} books on page {page}")
                
                for b in books:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    slug = b.get("slug")
                    if not slug:
                        continue
                        
                    author_data = b.get("author") or {}
                    author_name = author_data.get("name")
                    
                    price = b.get("price")
                    # Gabon Livres seems to use XAF / CFA Francs
                    
                    listing = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=b.get("title"),
                        author=author_name,
                        price=str(price) if price is not None else None,
                        price_currency="XAF",
                        listing_url=f"{self.BASE_URL}/catalogue/{slug}",
                        condition="Digital/New"
                    )
                    self.save_item(listing)
                    
                total_pages = data.get("totalPages", 1)
                if page >= total_pages:
                    self.logger.info(f"Reached final API page ({total_pages}).")
                    break

        except Exception as e:
            self.logger.error(f"Error during API crawl: {e}")
        finally:
            self.client.close()
            
        self.logger.info(f"Finished. {self.items_scraped} items added.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Gabon Livres API spider")
    parser.add_argument("--limit-pages", type=int, default=50)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    GabonLivresSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
