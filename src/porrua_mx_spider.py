import argparse
import asyncio
import httpx
from base_api_spider import BaseAPISpider

class PorruaMxSpider(BaseAPISpider):
    """
    Spider for Porrúa (Mexico).
    Cross-pollinated from the buyback-operators repository.
    Uses the WolfSellers AsyncCatalog GraphQL API for high-speed scraping.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name="Porrúa", territory="Mexico")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.graphql_url = "https://porrua.mx/graphql"
        
    async def run_async(self):
        self.logger.info(f"Starting Porrúa MX GraphQL Spider (Pages: {self.limit_pages})")
        items_scraped = 0
        
        async with httpx.AsyncClient() as client:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                query = f"""
                query CategoryProducts {{
                  categoryProducts(
                    category_id: "0" page_num: "{page}" page_size: "100"
                    applied_filters: {{ filters: {{}} }}
                    search_term: ""
                    order_by: "position" order_direction: "ASC"
                    search_filter: {{ filter: [] }}
                  ) {{
                    total_count
                    items {{ id name minPrice maxPrice url isbn sku isInStock }}
                  }}
                }}
                """
                
                self.logger.info(f"Fetching page {page} via GraphQL...")
                data = await self.fetch_json(client, self.graphql_url, params={"query": query})
                
                if not data or "data" not in data:
                    self.logger.warning(f"No valid data returned on page {page}")
                    break
                    
                items = data.get("data", {}).get("categoryProducts", {}).get("items", [])
                if not items:
                    self.logger.info(f"No more items found on page {page}. Terminating.")
                    break
                    
                for doc in items:
                    if self.limit_items and items_scraped >= self.limit_items:
                        break
                        
                    if not doc.get("isInStock"):
                        continue
                        
                    isbn = doc.get("isbn") or doc.get("sku")
                    if not isbn:
                        continue
                        
                    price_str = doc.get("minPrice") or doc.get("maxPrice")
                    if not price_str:
                        continue
                        
                    try:
                        price = float(price_str)
                    except ValueError:
                        continue
                        
                    self.process_listing(
                        isbn=isbn,
                        price=price,
                        currency="MXN",
                        url=doc.get("url") or self.graphql_url,
                        title=doc.get("name")
                    )
                    items_scraped += 1
                
                await asyncio.sleep(1) # Polite delay
                
        self.logger.info(f"Porrúa spider completed. Scraped {items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Porrúa MX GraphQL Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    PorruaMxSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
