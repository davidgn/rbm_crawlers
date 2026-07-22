import argparse
import asyncio
import httpx
from base_api_spider import BaseAPISpider

class VtexSearchSpider(BaseAPISpider):
    """
    Generic VTEX API spider for LATAM markets.
    """
    def __init__(self, platform_name: str, host: str, territory: str, search_term: str, currency: str, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name=platform_name, territory=territory)
        self.host = host
        self.search_term = search_term
        self.currency = currency
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        
    async def run_async(self):
        self.logger.info(f"Starting {self.platform_name} VTEX Spider (Pages: {self.limit_pages})")
        items_scraped = 0
        
        async with httpx.AsyncClient(verify=False) as client:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                
                # VTEX pagination is usually controlled by _from and _to, e.g. 0-49, 50-99
                _from = (page - 1) * 50
                _to = (page * 50) - 1
                
                url = f"https://{self.host}/api/catalog_system/pub/products/search"
                params = {
                    "ft": self.search_term,
                    "_from": _from,
                    "_to": _to
                }
                
                self.logger.info(f"Fetching page {page} ({_from}-{_to}) via VTEX API...")
                data = await self.fetch_json(client, url, params=params)
                
                if not data or not isinstance(data, list):
                    self.logger.info(f"No more items found on page {page}. Terminating.")
                    break
                    
                for product in data:
                    if self.limit_items and items_scraped >= self.limit_items:
                        break
                        
                    items = product.get("items", [])
                    if not items:
                        continue
                        
                    # Usually the first SKU item contains the best price
                    best_item = items[0]
                    sellers = best_item.get("sellers", [])
                    if not sellers:
                        continue
                        
                    price = sellers[0].get("commertialOffer", {}).get("Price")
                    if not price or price <= 0:
                        continue
                        
                    url_val = product.get("linkText")
                    full_url = f"https://{self.host}/{url_val}/p" if url_val else f"https://{self.host}/"
                    
                    self.process_listing(
                        isbn=product.get("productReference") or best_item.get("ean"),
                        price=price,
                        currency=self.currency,
                        url=full_url,
                        title=product.get("productName")
                    )
                    items_scraped += 1
                
                await asyncio.sleep(1)
                
        self.logger.info(f"{self.platform_name} spider completed. Scraped {items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="VTEX Generic Spider")
    parser.add_argument("--host", type=str, required=True)
    parser.add_argument("--platform", type=str, required=True)
    parser.add_argument("--territory", type=str, required=True)
    parser.add_argument("--currency", type=str, required=True)
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    VtexSearchSpider(
        platform_name=args.platform,
        host=args.host,
        territory=args.territory,
        search_term=args.query,
        currency=args.currency,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
