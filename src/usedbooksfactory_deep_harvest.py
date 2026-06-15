import asyncio
import httpx
from bs4 import BeautifulSoup
import json
import os
import logging
import re
import random
import signal
from models import BookListing

# Configure Logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] RBM-Discovery: %(message)s',
    handlers=[
        logging.FileHandler("discovery.log"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger("Discovery")

class UsedBooksFactoryDeepHarvest:
    def __init__(self, start_id=5000, end_id=93500, concurrency=2):
        self.start_id = start_id
        self.end_id = end_id
        self.concurrency = concurrency
        self.output_file = "data/usedbooksfactory_full_harvest.jsonl"
        self.checkpoint_file = "data/discovery_checkpoint.txt"
        os.makedirs("data", exist_ok=True)
        self.items_scraped = 0
        self.last_id = self._load_checkpoint()
        self.is_running = True

    def _load_checkpoint(self):
        if os.path.exists(self.checkpoint_file):
            with open(self.checkpoint_file, "r") as f:
                try:
                    val = int(f.read().strip())
                    logger.info(f"Loaded checkpoint at ID: {val}")
                    return max(val, self.start_id - 1)
                except Exception as e:
                    logger.error(f"Failed to load checkpoint: {e}")
                    return self.start_id - 1
        return self.start_id - 1

    def _save_checkpoint(self, book_id):
        """Atomic checkpoint saving."""
        temp_file = self.checkpoint_file + ".tmp"
        try:
            with open(temp_file, "w") as f:
                f.write(str(book_id))
            os.replace(temp_file, self.checkpoint_file)
        except Exception as e:
            logger.error(f"Failed to save checkpoint at {book_id}: {e}")

    async def fetch_book(self, client, book_id, retries=3):
        url = f"https://www.usedbooksfactory.com/buy-second-hand-old-books/detail/?book_id={book_id}"
        
        for attempt in range(retries):
            if not self.is_running:
                return False

            # Increasing delay on retries
            backoff = (attempt * 5.0) + random.uniform(1.0, 3.0)
            await asyncio.sleep(backoff)
            
            try:
                resp = await client.get(url, follow_redirects=True, timeout=20.0)
                if resp.status_code == 200:
                    self._parse_page(resp.text, url)
                    return True
                elif resp.status_code == 404:
                    return False
                elif resp.status_code == 403 or resp.status_code == 429:
                    logger.warning(f"Rate limited (Status {resp.status_code}) on ID {book_id}. Attempt {attempt+1}/{retries}")
                else:
                    logger.warning(f"Unexpected status {resp.status_code} for ID {book_id}. Attempt {attempt+1}/{retries}")
            except (httpx.TimeoutException, httpx.NetworkError) as e:
                logger.error(f"Network error for ID {book_id} (Attempt {attempt+1}): {e}")
            except Exception as e:
                logger.error(f"Uncaught error for ID {book_id}: {e}")
                break
                
        return False

    def _parse_page(self, html, url):
        soup = BeautifulSoup(html, "html.parser")
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
            
        price_val = None
        price_span = soup.find("span", class_="aa-product-price")
        if price_span:
            price_val = "INR " + price_span.text.strip().replace("₹", "").replace(",", "").strip()

        condition = None
        for p in soup.find_all("p"):
            if "Condition" in p.text:
                condition = p.text.replace("Condition", "").replace(":", "").strip()
                break
        
        # ISBN Scavenging
        isbn = None
        isbn_match = re.search(r'\b(97[89][0-9]{10})\b', full_title + soup.get_text())
        if isbn_match:
            isbn = isbn_match.group(1)

        item = BookListing(
            territory="India",
            platform="UsedBooksFactory",
            title=title,
            author=author,
            isbn=isbn,
            price=price_val,
            condition=condition,
            listing_url=url
        )
        
        try:
            with open(self.output_file, "a", encoding="utf-8") as f:
                f.write(json.dumps(item.to_dict()) + "\n")
            self.items_scraped += 1
        except Exception as e:
            logger.error(f"Failed to write item to disk: {e}")

    async def run(self):
        current_id = self.last_id + 1
        logger.info(f"Resuming harvest from ID {current_id} to {self.end_id}")
        
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
        }

        async with httpx.AsyncClient(timeout=30.0, follow_redirects=True, headers=headers) as client:
            semaphore = asyncio.Semaphore(self.concurrency)
            
            async def sem_task(bid):
                if not self.is_running:
                    return
                async with semaphore:
                    await self.fetch_book(client, bid)
                    self._save_checkpoint(bid)

            # Process in small chunks to ensure responsiveness to shutdown signals
            chunk_size = 20
            try:
                for i in range(current_id, self.end_id + 1, chunk_size):
                    if not self.is_running:
                        break
                    chunk_end = min(i + chunk_size, self.end_id + 1)
                    tasks = [sem_task(bid) for bid in range(i, chunk_end)]
                    await asyncio.gather(*tasks)
                    logger.info(f"Progress Checkpoint: ID {chunk_end-1} reached. Total found this session: {self.items_scraped}")
            except asyncio.CancelledError:
                logger.info("Harvest task cancelled. Saving state...")
            finally:
                logger.info(f"Harvest stopped. Last ID checked: {self.last_id}")

    def stop(self):
        self.is_running = False
        logger.info("Shutdown signal received.")

if __name__ == "__main__":
    harvest = UsedBooksFactoryDeepHarvest(concurrency=2)
    
    loop = asyncio.get_event_loop()
    
    # Simple signal handling for graceful exit
    for sig in (signal.SIGINT, signal.SIGTERM):
        try:
            loop.add_signal_handler(sig, harvest.stop)
        except NotImplementedError:
            # Signal handlers not supported on all platforms (like Windows)
            pass

    try:
        loop.run_until_complete(harvest.run())
    except KeyboardInterrupt:
        logger.info("Process interrupted by user.")
    finally:
        logger.info("Discovery Script Exited.")
