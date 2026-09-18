import os
import json
import time
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class FlaresolverrSearchSpider(BaseSpider):
    """
    A generic spider that routes requests through a local FlareSolverr instance to bypass Cloudflare.
    """
    def __init__(
        self,
        platform_name: str,
        base_url: str,
        search_path: str,
        selectors: dict = None,
        territory: str = "Unknown",
        limit_pages: int = 10,
        limit_items: int | None = None,
        price_currency: str = "",
        flaresolverr_url: str = "http://localhost:8191/v1",
        **kwargs
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.search_path = search_path
        self.selectors = selectors or {}
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.price_currency = price_currency
        self.flaresolverr_url = flaresolverr_url
        self.items_scraped = 0

    def run(self, search_term: str):
        self.logger.info(f"Starting FlareSolverr crawl for {self.platform_name}. Search Term: {search_term}")
        success = True

        for page_num in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
                
            path = self.search_path.format(query=search_term, page=page_num)
            url = f"{self.base_url}/{path}"
            
            self.logger.info(f"Flaresolverr requesting: {url}")
            payload = {
                "cmd": "request.get",
                "url": url,
                "maxTimeout": 60000
            }
            
            try:
                response = requests.post(self.flaresolverr_url, json=payload, headers={"Content-Type": "application/json"})
                data = response.json()
                
                if data.get("status") != "ok":
                    self.logger.error(f"FlareSolverr failed: {data.get('message')}")
                    success = False
                    break
                    
                html = data.get("solution", {}).get("response", "")
                soup = BeautifulSoup(html, "html.parser")
                
                if self.selectors and 'container' in self.selectors and self.selectors['container']:
                    items = soup.select(self.selectors['container'])
                else:
                    items = soup.find_all('a', href=True)
                    
                if not items:
                    self.logger.info(f"No items found on page {page_num}. Stopping.")
                    break
                    
                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")
                        
            except Exception as e:
                self.logger.error(f"Error connecting to FlareSolverr: {e}")
                success = False
                break

        if success:
            self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item):
        title = ""
        link = ""
        price = ""
        author = ""

        if self.selectors:
            if 'title' in self.selectors:
                title_elem = item.select_one(self.selectors['title'])
                if title_elem:
                    title = title_elem.get_text(strip=True)
            if 'link' in self.selectors:
                link_elem = item.select_one(self.selectors['link'])
                if link_elem and link_elem.has_attr('href'):
                    link = urljoin(self.base_url, link_elem['href'])
            if 'price' in self.selectors:
                price_elem = item.select_one(self.selectors['price'])
                if price_elem:
                    price = price_elem.get_text(strip=True)
            if 'author' in self.selectors:
                author_elem = item.select_one(self.selectors['author'])
                if author_elem:
                    author = author_elem.get_text(strip=True)

        if title and link:
            listing = BookListing(
                platform=self.platform_name,
                listing_url=link,
                title=title,
                author=author,
                price_currency=self.price_currency,
                price_display=price,
                condition="Used",
                territory=self.territory,
                seller="Unknown"
            )
            self.save_item(listing)
            self.items_scraped += 1
