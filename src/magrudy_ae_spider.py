import argparse
import asyncio
import httpx
from base_api_spider import BaseAPISpider

class MagrudyAeSpider(BaseAPISpider):
    """
    Spider for Magrudy's (United Arab Emirates).
    Cross-pollinated from the buyback-operators repository.
    Uses their Next.js internal API for fast scraping.
    """
    def __init__(self, search_term: str = "", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name="Magrudy's", territory="UAE")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.search_term = search_term
        self.api_url = "https://www.magrudy.com/api/search/do-search"
        
    async def run_async(self):
        self.logger.info(f"Starting Magrudy's AE API Spider (Pages: {self.limit_pages})")
        items_scraped = 0
        
        async with httpx.AsyncClient() as client:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                payload = {
                    "q": self.search_term,
                    "stype": "item",
                    "pagenum": page,
                    "pagesize": 100,
                    "appliedFilters": {},
                    "sortOption": ""
                }
                
                self.logger.info(f"Fetching page {page} via API...")
                try:
                    resp = await client.post(
                        self.api_url, 
                        json=payload,
                        headers={"Content-Type": "application/json", **self.get_random_headers()},
                        timeout=20.0
                    )
                    resp.raise_for_status()
                    data = resp.json()
                except Exception as e:
                    self.logger.error(f"Error fetching page {page}: {e}")
                    break
                    
                items = data.get("data")
                if not items:
                    self.logger.info(f"No more items found on page {page}. Terminating.")
                    break
                    
                for product in items:
                    if self.limit_items and items_scraped >= self.limit_items:
                        break
                        
                    isbn = product.get("isbn")
                    if not isbn:
                        continue
                        
                    try:
                        price = float(product.get("unitPriceInclVAT", 0))
                    except (KeyError, TypeError, ValueError):
                        continue
                        
                    if price <= 0:
                        continue
                        
                    self.process_listing(
                        isbn=isbn,
                        price=price,
                        currency="AED",
                        url=f"https://www.magrudy.com/search?q={isbn}",
                        title=product.get("title")
                    )
                    items_scraped += 1
                
                await asyncio.sleep(1) # Polite delay
                
        self.logger.info(f"Magrudy's spider completed. Scraped {items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Magrudy's AE API Spider")
    parser.add_argument("--query", type=str, default="")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    MagrudyAeSpider(
        search_term=args.query,
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
