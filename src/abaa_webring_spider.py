import httpx
import asyncio
from bs4 import BeautifulSoup
from urllib.parse import urljoin, urlparse
from base_spider import BaseSpider
from ai_extractor import deep_extract
from models import BookListing
import nodriver as uc

class AbaaWebringSpider(BaseSpider):
    """
    Crawls independent antiquarian bookstores by spidering outward from a seed list.
    Uses AI Extractor to pull data from completely unknown DOM structures.
    """
    MAX_FETCHES_PER_SEED = 60  # depth<=3 alone doesn't bound breadth on a large site

    def __init__(self):
        super().__init__(platform_name="AntiquarianWebRing", territory="US")
        self.visited_urls = set()
        self.product_queue = asyncio.Queue()
        self._nodriver_browser = None
        self._nodriver_page = None
        self._fetch_counts = {}

    async def _get_via_nodriver(self, url: str) -> str | None:
        """Fallback for sites that block plain httpx (e.g. strandbooks.com blocks even
        a bare GET on '/'). Lazily starts one shared browser/tab reused for every
        fallback fetch in this run rather than one per URL."""
        try:
            if self._nodriver_browser is None:
                self._nodriver_browser = await uc.start()
                self._nodriver_page = await self._nodriver_browser.get("about:blank")
            await self._nodriver_page.get(url)
            await asyncio.sleep(4)
            return await self._nodriver_page.get_content()
        except Exception as e:
            self.logger.warning(f"nodriver fallback failed for {url}: {e}")
            return None

    async def _close_nodriver(self):
        if self._nodriver_browser is not None:
            self._nodriver_browser.stop()

    def is_likely_product_page(self, text: str) -> bool:
        """Fast heuristic to avoid wasting expensive LLM tokens on 'About Us' or 'Contact' pages."""
        text_lower = text.lower()
        has_price = "$" in text
        has_book_words = any(w in text_lower for w in ["author", "publisher", "published", "edition", "add to cart"])
        return has_price and has_book_words
        
    async def crawl_site(self, client: httpx.AsyncClient, base_url: str, current_url: str, depth: int = 0):
        # Limit depth to prevent infinite crawling of calendars/pagination
        if depth > 3 or current_url in self.visited_urls:
            return
        if self._fetch_counts.get(base_url, 0) >= self.MAX_FETCHES_PER_SEED:
            return

        self.visited_urls.add(current_url)
        self._fetch_counts[base_url] = self._fetch_counts.get(base_url, 0) + 1
        self.logger.info(f"Crawling depth {depth}: {current_url}")
        
        try:
            html = None
            try:
                resp = await client.get(current_url, headers=self.get_random_headers(), timeout=15.0)
                if resp.status_code == 200:
                    html = resp.text
                elif resp.status_code == 403:
                    self.logger.info(f"httpx got 403 on {current_url}, falling back to nodriver...")
                    html = await self._get_via_nodriver(current_url)
            except httpx.RequestError:
                html = await self._get_via_nodriver(current_url)

            if not html:
                return

            soup = BeautifulSoup(html, 'html.parser')
            
            # 1. If it looks like a rare book listing, queue the HTML for the LLM!
            if self.is_likely_product_page(soup.get_text()):
                await self.product_queue.put((current_url, html))
                
            # 2. Extract links and spider outward
            for link in soup.find_all('a', href=True):
                href = link['href']
                full_url = urljoin(base_url, href)
                
                # Stay on the same domain for this specific sub-spider
                if urlparse(full_url).netloc == urlparse(base_url).netloc:
                    await self.crawl_site(client, base_url, full_url, depth + 1)
                    
        except Exception as e:
            self.logger.error(f"Failed to crawl {current_url}: {e}")
            
    async def ai_extraction_worker(self):
        """Worker that pulls raw HTML off the queue and fires it at Gemini Flash."""
        while True:
            url, html = await self.product_queue.get()
            try:
                self.logger.info(f"🧠 Running AI Extractor on {url}...")
                
                # This calls the existing gemini CLI integration in ai_extractor.py
                data = deep_extract(html, platform="Antiquarian")
                
                if data and data.get("title") and data.get("price"):
                    listing = BookListing(
                        platform=self.platform_name,
                        territory=self.territory,
                        listing_url=url,
                        title=data.get("title"),
                        price=str(data.get("price")),
                        condition=data.get("condition", "antiquarian"),
                        isbn=data.get("isbn", "") # Often blank for pre-1970 antiquarian!
                    )
                    # Stream to Redis Firehose!
                    self.save_item(listing)
                    self.logger.info(f"✅ AI Extracted: {listing.title} | {listing.price}")
                    
            except Exception as e:
                self.logger.error(f"AI Extraction failed for {url}: {e}")
            finally:
                self.product_queue.task_done()
                
    async def run_async(self):
        # Example seeds (In production, this would be populated from the ABAA member directory)
        seed_bookstores = [
            "https://www.brattlebookshop.com/",  # "/rare-books" 404s; crawl outward from the homepage instead
            "https://www.strandbooks.com/",  # blocks plain httpx even on "/" — handled via the
                                              # nodriver fallback in crawl_site() ("/rare-books/" 404s too)
        ]

        async with httpx.AsyncClient() as client:
            # Spin up the AI background worker
            worker = asyncio.create_task(self.ai_extraction_worker())

            # Start crawling all seed sites concurrently
            tasks = [self.crawl_site(client, seed, seed) for seed in seed_bookstores]
            await asyncio.gather(*tasks)

            # Wait for all queued HTML to be processed by the LLM
            await self.product_queue.join()
            worker.cancel()

        await self._close_nodriver()
            
    def run(self):
        asyncio.run(self.run_async())

if __name__ == "__main__":
    spider = AbaaWebringSpider()
    spider.run()
