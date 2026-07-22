import httpx
import asyncio
from base_api_spider import BaseAPISpider
from models import BookListing

class MedimopsAPISpider(BaseAPISpider):
    """
    High-speed API crawler for Medimops (Momox Retail).
    Discovers books via API pagination rather than Playwright browsing.
    """
    def __init__(self):
        super().__init__(platform_name="medimops-api", territory="Germany")
        # Medimops frontend uses a headless API for their catalog
        self.api_base_url = "https://www.medimops.de/api/v1/search"
        
    async def discover_category(self, client: httpx.AsyncClient, category_id: str):
        """Iterate through the pagination of a specific category."""
        page = 1
        has_next = True
        
        while has_next:
            self.logger.info(f"Fetching {category_id} - Page {page}...")
            
            # Example API parameters for discovery
            params = {
                "category": category_id,
                "page": page,
                "itemsPerPage": 100
            }
            
            data = await self.fetch_json(client, self.api_base_url, params=params)
            
            if not data or "items" not in data:
                self.logger.warning(f"Failed to fetch or end of category {category_id}")
                break
                
            items = data.get("items", [])
            for raw_item in items:
                self.parse_and_save(raw_item)
                
            # Check pagination
            total_pages = data.get("pagination", {}).get("totalPages", 1)
            if page >= total_pages or len(items) == 0:
                has_next = False
            else:
                page += 1
                await asyncio.sleep(0.5) # Gentle rate limiting
                
    def parse_and_save(self, raw_item: dict):
        """Convert the Medimops JSON payload into our standard BookListing and trigger the Firehose."""
        
        # Extract fields from the Medimops payload
        listing = BookListing(
            platform=self.platform_name,
            territory=self.territory,
            listing_url=f"https://www.medimops.de{raw_item.get('url', '')}",
            title=raw_item.get("title"),
            price=f"EUR {raw_item.get('price', 0.0)}",
            condition=raw_item.get("condition", "good"),
            isbn=raw_item.get("ean") or raw_item.get("isbn")
        )
        
        # Scavenge any missing data using our existing regex tool
        if raw_item.get("description"):
            listing = self.scavenge_metadata(raw_item["description"], listing)
            
        # Fire off to Redis and SQLite!
        self.save_item(listing)
        
    async def run_async(self):
        # We start by probing the main book categories
        seed_categories = ["buecher", "fachbuecher", "antiquarische-buecher"]
        
        # Use a single connection pool for massive speed
        async with httpx.AsyncClient() as client:
            # We can run categories concurrently!
            tasks = [self.discover_category(client, cat) for cat in seed_categories]
            await asyncio.gather(*tasks)

if __name__ == "__main__":
    spider = MedimopsAPISpider()
    spider.run()
