import asyncio
import re
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider
from isbn_utils import isbn_from_url
import nodriver as uc

class NodriverSearchSpider(BaseSpider):
    def __init__(self, platform_name: str, base_url: str, search_path: str, selectors: dict, territory: str, price_currency: str = None, limit_pages: int = 5, limit_items: int = None, **kwargs):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.search_path = search_path
        self.selectors = selectors
        self.price_currency = price_currency
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self, search_term: str):
        asyncio.run(self._run_async(search_term))

    async def _run_async(self, search_term: str):
        self.logger.info(f"Starting nodriver crawl for {self.platform_name}. Search Term: {search_term}")
        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            for page_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                
                url_template = self.search_path if self.search_path.startswith("http") else f"{self.base_url}/{self.search_path.lstrip('/')}"
                try:
                    url = url_template.format(query=search_term.replace(' ', '+'), search_term=search_term.replace(' ', '+'), page=page_num)
                except Exception:
                    url = url_template
                    
                self.logger.info(f"Navigating to {url}")
                await page.get(url)
                await asyncio.sleep(5) # Allow CF to pass
                
                html = await page.get_content()
                if "cloudflare" in html.lower() and "just a moment" in html.lower():
                    self.logger.warning("Waiting longer for Cloudflare...")
                    await asyncio.sleep(8)
                    html = await page.get_content()

                soup = BeautifulSoup(html, "html.parser")
                items = soup.select(self.selectors.get('container', 'body')) if self.selectors.get('container') else []
                
                if not items:
                    self.logger.info(f"No items found on page {page_num}.")
                    break

                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    self._parse_item(item)
                    
                await asyncio.sleep(2)
        except Exception as e:
            self.logger.error(f"Error: {e}")
        finally:
            browser.stop()
            
    def _parse_item(self, item_soup):
        if not item_soup: return
        title_el = item_soup.select_one(self.selectors.get('title'))
        if not title_el: return
        title = title_el.text.strip()
        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = urljoin(self.base_url, link_el['href']) if link_el and link_el.has_attr('href') else None
        if not title or not listing_url: return

        price_val = None
        price_el = item_soup.select_one(self.selectors.get('price')) if self.selectors.get('price') else None
        if price_el:
            m = re.search(r"[\d\.,]+", price_el.text)
            if m: price_val = m.group(0).replace(',', '.')
            
        author = None
        author_el = item_soup.select_one(self.selectors.get('author')) if self.selectors.get('author') else None
        if author_el: author = author_el.text.strip()
        
        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn_from_url(listing_url) if listing_url else None,
            price=price_val,
            price_currency=self.price_currency,
            listing_url=listing_url,
        )
        self.save_item(book)

