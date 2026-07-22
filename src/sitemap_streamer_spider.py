import httpx
import asyncio
import logging
import tempfile
import os
import gzip
from lxml import etree
from base_api_spider import BaseAPISpider

class SitemapStreamerSpider(BaseAPISpider):
    """
    Massive scale sitemap parser.
    Uses lxml.etree.iterparse to stream gzip/xml without loading it into RAM,
    feeding URLs into an asyncio Queue for concurrent Micro-Scraping.
    """
    
    def __init__(self, platform_name: str, territory: str):
        super().__init__(platform_name, territory)
        self.worker_pool_size = 20  # 20 concurrent HTTP GET workers
        
    async def download_sitemap(self, client: httpx.AsyncClient, url: str, temp_path: str):
        self.logger.info(f"Downloading sitemap {url} to {temp_path}")
        async with client.stream('GET', url, follow_redirects=True) as response:
            response.raise_for_status()
            with open(temp_path, 'wb') as f:
                async for chunk in response.aiter_bytes():
                    f.write(chunk)
                    
    def parse_sitemap_urls(self, file_path: str):
        """Generator that yields URLs from the XML file using RAM-efficient iterparse."""
        open_func = gzip.open if file_path.endswith('.gz') else open
        
        with open_func(file_path, 'rb') as f:
            # Sitemaps use the namespace: {http://www.sitemaps.org/schemas/sitemap/0.9}loc
            context = etree.iterparse(f, events=('end',), tag='{http://www.sitemaps.org/schemas/sitemap/0.9}loc')
            for event, elem in context:
                yield elem.text
                
                # RAM Cleanup: clear the element and its previous siblings from the tree
                elem.clear() 
                while elem.getprevious() is not None:
                    del elem.getparent()[0]
                    
    async def micro_scrape_worker(self, client: httpx.AsyncClient, queue: asyncio.Queue):
        """Worker that constantly pulls URLs from the queue and extracts the price."""
        while True:
            url = await queue.get()
            try:
                await self.micro_scrape(client, url)
            except Exception as e:
                self.logger.error(f"Failed to micro-scrape {url}: {e}")
            finally:
                queue.task_done()
                
    async def micro_scrape(self, client: httpx.AsyncClient, url: str):
        raise NotImplementedError("Subclasses must implement Micro-Scraping logic")
        
    async def process_sitemap(self, sitemap_url: str):
        """Main orchestrator: downloads, streams, and delegates urls to workers."""
        queue = asyncio.Queue(maxsize=2000) # Prevent memory bloat from queue
        
        ext = ".xml.gz" if sitemap_url.endswith(".gz") else ".xml"
        fd, temp_path = tempfile.mkstemp(suffix=ext)
        os.close(fd)
        
        try:
            async with httpx.AsyncClient() as client:
                # 1. Download locally
                await self.download_sitemap(client, sitemap_url, temp_path)
                
                # 2. Spin up async workers
                workers = [asyncio.create_task(self.micro_scrape_worker(client, queue)) for _ in range(self.worker_pool_size)]
                
                # 3. Stream URLs into queue safely
                self.logger.info("Streaming URLs into worker queue...")
                url_count = 0
                for url in self.parse_sitemap_urls(temp_path):
                    await queue.put(url)
                    url_count += 1
                    if url_count % 5000 == 0:
                        self.logger.info(f"Queued {url_count} URLs...")
                        
                # 4. Wait for all processing to finish
                await queue.join()
                
                # 5. Terminate workers
                for w in workers:
                    w.cancel()
                    
                self.logger.info(f"Successfully processed all {url_count} URLs from {sitemap_url}!")
        finally:
            if os.path.exists(temp_path):
                os.remove(temp_path)
