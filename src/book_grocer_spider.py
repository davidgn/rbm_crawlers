import httpx
from bs4 import BeautifulSoup
import asyncio
from base_api_spider import BaseAPISpider
from models import BookListing

class BookGrocerSpider(BaseAPISpider):
    """
    High-Speed API Spider for Book Grocer (Australia).
    Targets the AU market to capture high 'sell' prices for textbook arbitrage.
    """
    def __init__(self):
        super().__init__(platform_name="BookGrocer", territory="AU")
        self.base_url = "https://bookgrocer.com/search"

    async def fetch_page(self, client: httpx.AsyncClient, isbn: str) -> str:
        url = f"{self.base_url}?q={isbn}"
        headers = self.get_random_headers()
        self.logger.info(f"Searching Book Grocer AU for ISBN: {isbn}")
        
        response = await client.get(url, headers=headers, timeout=10.0)
        response.raise_for_status()
        return response.text, url

    def parse(self, html: str, url: str, isbn: str):
        soup = BeautifulSoup(html, 'html.parser')
        
        # Book Grocer uses standard Shopify-esque templates
        product_card = soup.select_one('.product-card, .grid-product')
        if not product_card:
            self.logger.warning(f"No results found for ISBN {isbn}")
            return
            
        title_elem = product_card.select_one('.grid-product__title')
        price_elem = product_card.select_one('.grid-product__price')
        
        if title_elem and price_elem:
            title = title_elem.get_text(strip=True)
            # They use AUD native currency symbol
            raw_price = price_elem.get_text(strip=True).replace('$', '').replace('AUD', '').strip()
            
            listing = BookListing(
                platform=self.platform_name,
                territory=self.territory,
                listing_url=url,
                title=title,
                price=f"AUD {raw_price}", # Kept Native! Will hit AUD Wallet in WargameEngine
                condition="used",
                isbn=isbn
            )
            
            self.save_item(listing)
            self.logger.info(f"Found on Book Grocer: {title} | AUD {raw_price}")

    async def crawl_isbn(self, isbn: str):
        async with httpx.AsyncClient() as client:
            try:
                html, url = await self.fetch_page(client, isbn)
                self.parse(html, url, isbn)
            except httpx.HTTPError as e:
                self.logger.error(f"HTTP Error querying ISBN {isbn}: {e}")

    def run_async(self):
        # Example Australian Textbook Targets (High Price Parity)
        test_isbns = ["9780134093413", "9780321982384"]
        
        loop = asyncio.get_event_loop()
        tasks = [self.crawl_isbn(isbn) for isbn in test_isbns]
        loop.run_until_complete(asyncio.gather(*tasks))

if __name__ == "__main__":
    spider = BookGrocerSpider()
    spider.run_async()
