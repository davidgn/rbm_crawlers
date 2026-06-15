import asyncio
import httpx
from bs4 import BeautifulSoup
import json
import os
import logging
from models import BookListing

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] Discovery: %(message)s')
logger = logging.getLogger("Discovery")

class UsedBooksFactoryDiscovery:
    def __init__(self, start_id=1, end_id=95000, concurrency=5):
        self.start_id = start_id
        self.end_id = end_id
        self.concurrency = concurrency
        self.output_file = "src/data/usedbooksfactory_discovery.jsonl"
        os.makedirs("src/data", exist_ok=True)
        self.items_scraped = 0

    async def fetch_book(self, client, book_id):
        url = f"https://www.usedbooksfactory.com/buy-second-hand-old-books/detail/?book_id={book_id}"
        try:
            resp = await client.get(url, follow_redirects=True)
            if resp.status_code == 200:
                self._parse_page(resp.text, url)
        except Exception as e:
            logger.error(f"Error fetching ID {book_id}: {e}")

    def _parse_page(self, html, url):
        soup = BeautifulSoup(html, "html.parser")
        
        # Extract Title
        title_h1 = soup.find("h1", class_="aa-product-title")
        if not title_h1:
            return
        
        full_title = title_h1.text.strip()
        title = full_title
        author = None
        if " - " in title:
            parts = title.rsplit(" - ", 1)
            title = parts[0].strip()
            author = parts[1].strip()
            
        # Price
        price_val = None
        price_span = soup.find("span", class_="aa-product-price")
        if price_span:
            price_val = "INR " + price_span.text.strip().replace("₹", "").replace(",", "").strip()

        # Condition
        condition = None
        for p in soup.find_all("p"):
            if "Condition" in p.text:
                condition = p.text.replace("Condition", "").replace(":", "").strip()
                break

        item = BookListing(
            territory="India",
            platform="UsedBooksFactory",
            title=title,
            author=author,
            price=price_val,
            condition=condition,
            listing_url=url
        )
        
        with open(self.output_file, "a") as f:
            f.write(json.dumps(item.to_dict()) + "\n")
        self.items_scraped += 1
        if self.items_scraped % 100 == 0:
            logger.info(f"Progress: {self.items_scraped} items discovered.")

    async def run(self):
        logger.info(f"Starting discovery range {self.start_id} to {self.end_id}")
        async with httpx.AsyncClient(timeout=30.0, follow_redirects=True) as client:
            semaphore = asyncio.Semaphore(self.concurrency)
            
            async def sem_task(bid):
                async with semaphore:
                    await self.fetch_book(client, bid)
                    await asyncio.sleep(0.5) # Minimum delay per worker

            tasks = [sem_task(bid) for bid in range(self.start_id, self.end_id + 1)]
            await asyncio.gather(*tasks)

if __name__ == "__main__":
    discovery = UsedBooksFactoryDiscovery(start_id=92000, end_id=93000, concurrency=5)
    asyncio.run(discovery.run())
