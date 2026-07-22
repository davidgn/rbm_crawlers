import argparse
import asyncio
import httpx
from base_api_spider import BaseAPISpider

class BookstopKeSpider(BaseAPISpider):
    """
    Spider for Bookstop (Kenya).
    Cross-pollinated from the buyback-operators repository.
    Uses the Magento 2 GraphQL API for high-speed scraping.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name="Bookstop", territory="Kenya")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.graphql_url = "https://bookstop.co.ke/graphql"
        
    async def run_async(self):
        self.logger.info(f"Starting Bookstop KE GraphQL Spider (Pages: {self.limit_pages})")
        items_scraped = 0
        
        async with httpx.AsyncClient() as client:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                query = f"""
                {{
                  products(pageSize: 100, currentPage: {page}) {{
                    items {{
                      sku
                      name
                      url_key
                      price_range {{
                        minimum_price {{
                          final_price {{
                            value
                          }}
                        }}
                      }}
                    }}
                  }}
                }}
                """
                
                self.logger.info(f"Fetching page {page} via GraphQL...")
                data = await self.fetch_json(
                    client, 
                    self.graphql_url, 
                    params={"query": query},
                    headers={"Content-Type": "application/json"}
                )
                
                if not data or "data" not in data:
                    self.logger.warning(f"No valid data returned on page {page}")
                    break
                    
                items = data.get("data", {}).get("products", {}).get("items", [])
                if not items:
                    self.logger.info(f"No more items found on page {page}. Terminating.")
                    break
                    
                for product in items:
                    if self.limit_items and items_scraped >= self.limit_items:
                        break
                        
                    sku = product.get("sku")
                    if not sku:
                        continue
                        
                    try:
                        price = float(product["price_range"]["minimum_price"]["final_price"]["value"])
                    except (KeyError, TypeError, ValueError):
                        continue
                        
                    if price <= 0:
                        continue
                        
                    url_key = product.get("url_key")
                    url = f"https://bookstop.co.ke/{url_key}.html" if url_key else f"https://bookstop.co.ke/catalogsearch/result/?q={sku}"
                    
                    self.process_listing(
                        isbn=sku,
                        price=price,
                        currency="KES",
                        url=url,
                        title=product.get("name")
                    )
                    items_scraped += 1
                
                await asyncio.sleep(1) # Polite delay
                
        self.logger.info(f"Bookstop KE spider completed. Scraped {items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bookstop KE GraphQL Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    BookstopKeSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
