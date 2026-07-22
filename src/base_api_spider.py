import httpx
import asyncio
import logging
from typing import Optional, Dict, Any
from base_spider import BaseSpider

class BaseAPISpider(BaseSpider):
    """
    Extends BaseSpider for ultra-fast, Playwright-free API scraping using httpx.
    Maintains full compatibility with the Redis Firehose and SQLite persistence.
    """
    def __init__(self, platform_name: str, territory: str):
        super().__init__(platform_name, territory)
        # Override logger to use the child class name
        self.logger = logging.getLogger(self.__class__.__name__)
        
    async def fetch_json(self, client: httpx.AsyncClient, url: str, params: Optional[Dict[str, Any]] = None, headers: Optional[Dict[str, str]] = None) -> Optional[Dict[str, Any]]:
        """Safely fetch and parse JSON from an API, with fallback detection."""
        try:
            # We use random headers from BaseSpider to mimic a real user
            req_headers = self.get_random_headers()
            if headers:
                req_headers.update(headers)
                
            resp = await client.get(url, params=params, headers=req_headers, timeout=15.0)
            resp.raise_for_status()
            return resp.json()
            
        except httpx.HTTPStatusError as e:
            if e.response.status_code in (403, 429, 401):
                self.logger.warning(f"🚨 API BLOCKED ({e.response.status_code}) on {url}. Bot protection active. Graceful fallback to Playwright needed.")
            else:
                self.logger.error(f"HTTP {e.response.status_code} error for {url}: {e}")
        except Exception as e:
            self.logger.error(f"Request failed for {url}: {e}")
        return None

    def run(self):
        """Synchronous bridge to execute the asynchronous event loop."""
        asyncio.run(self.run_async())
        
    async def run_async(self):
        raise NotImplementedError("Subclasses must implement run_async()")
