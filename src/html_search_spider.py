import os
from curl_cffi import requests as curlex
from bs4 import BeautifulSoup
import time
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider
from ai_extractor import local_fallback_extract
import random

class HTMLSearchSpider(BaseSpider):
    """
    A generic spider for Indian bookstores that parses HTML search result pages.
    """
    def __init__(
        self,
        platform_name: str,
        base_url: str,
        search_path: str,
        selectors: dict = None,
        territory: str = "India",
        limit_pages: int = 10,
        limit_items: int | None = None,
        price_currency: str = "",
        **kwargs
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip("/")
        self.search_path = search_path
        self.selectors = selectors or {}
        self.kwargs = kwargs
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.items_attempted = 0
        self.price_currency = price_currency or kwargs.get("currency", "")
        # Adding browser-like headers to bypass simple blocks
        self.client = curlex.Session(impersonate="chrome110", timeout=30.0)

    def _get_robust_response(self, url, max_retries=3):
        for attempt in range(max_retries):
            try:
                headers = {
                    'User-Agent': random.choice([
                        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
                        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15',
                        'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0'
                    ]),
                    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8'
                }
                response = self.client.get(url, headers=headers)
                if response.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got {response.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return response
            except Exception as e:
                self.logger.warning(f"Request failed: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None
    def run(self):
        self.logger.info(f"Starting HTML Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        search_term = os.getenv("RBM_SEARCH_TERM", "University of Chicago Press") 
        
        for page in range(1, self.limit_pages + 1):
            if self.limit_items is not None and self.items_attempted >= self.limit_items:
                break
            url = f"{self.base_url}/{self.search_path}".format(query=search_term.replace(' ', '+'), search_term=search_term.replace(' ', '+'), page=page)
            self.logger.info(f"Fetching page {page}: {url}")
            
            # Rotate headers and add retries for robustness
            response = self._get_robust_response(url)
            if not response:
                self.logger.error(f"Failed to fetch {url} after retries.")
                break
                
            if response.status_code in [404, 400]:
                self.logger.info("Reached end of pagination (404/400).")
                break
            
            if response.status_code == 403 and "cloudflare" in response.text.lower():
                self.logger.error("Blocked by Cloudflare permanently.")
                break

            if self.selectors and 'container' in self.selectors:
                soup = BeautifulSoup(response.text, "html.parser")
                items = soup.select(self.selectors['container'])
            else:
                soup = BeautifulSoup(response.text, "html.parser")
                items = soup.find_all('a', href=True)

            if not items:
                self.logger.info(f"No items found on page {page}. Stopping.")
                break

            for item in items:
                if self.limit_items is not None and self.items_attempted >= self.limit_items:
                    break
                try:
                    self.items_attempted += 1
                    self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Error parsing item: {e}")

            time.sleep(2) # Polite delay
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_element):
        title = None
        listing_url = None
        price_val = None
        author = None

        item_soup = item_element
        
        if self.selectors and 'title' in self.selectors:
            title_el = item_soup.select_one(self.selectors['title'])
            if title_el: title = title_el.text.strip()
        elif item_soup.name == 'a':
            title = item_soup.get_text(strip=True)

        if not title or len(title) < 5:
            return # Skip items without a meaningful title

        # Filter out common navigational links
        lower_title = title.lower()
        skip_words = ['sign in', 'log in', 'login', 'account', 'cart', 'checkout', 'help', 'about', 'contact', 'search', 'home', 'privacy', 'terms', 'conditions', 'currency', 'cookie', 'skip', 'top', 'no results']
        if any(word in lower_title for word in skip_words) and len(title) < 30:
            return

        if self.selectors and 'link' in self.selectors:
            link_el = item_soup.select_one(self.selectors['link'])
            if link_el and link_el.has_attr('href'):
                listing_url = urljoin(self.base_url, link_el['href'])
        elif item_soup.name == 'a' and item_soup.has_attr('href'):
            listing_url = urljoin(self.base_url, item_soup['href'])
        else:
            fallback_link = item_soup.find('a', href=True) if hasattr(item_soup, 'find') else None
            if fallback_link and fallback_link.has_attr('href'):
                listing_url = urljoin(self.base_url, fallback_link['href'])
                    
        if not listing_url:
            return

        # Price extraction
        price_currency_extracted = self.price_currency
        if self.selectors and 'price' in self.selectors:
            price_el = item_soup.select_one(self.selectors['price'])
            if price_el:
                txt = price_el.text.strip()
                match = re.search(r"[\d\.,]+", txt)
                if match:
                    raw_num = match.group(0)
                    if re.search(r"^\d{1,3}(?:\.\d{3})+,\d{2}$", raw_num):
                        price_val = raw_num.replace(".", "").replace(",", ".")
                    elif re.search(r"^\d+,\d{2}$", raw_num):
                        price_val = raw_num.replace(",", ".")
                    elif re.search(r"^\d{1,3}(?:,\d{3})+\.\d{2}$", raw_num):
                        price_val = raw_num.replace(",", "")
                    elif re.search(r"^\d{1,3}(?:\.\d{3})+$", raw_num):
                        price_val = raw_num.replace(".", "")
                    else:
                        price_val = raw_num.replace(",", "")
        else:
            # Fallback: Search the parent or grandparent for a price-like number
            search_container = item_soup.find_parent()
            if search_container:
                grandparent = search_container.find_parent()
                if grandparent:
                    search_container = grandparent
                    
                text_to_search = search_container.get_text(separator=' ', strip=True)
                match = re.search(r"(?:Rs\.?|INR|USD|\$|£|€|\b(?:R\$|Rp|RM|TWD|฿|VND|kr|Kč|zł|CHF))\s*([\d,]+(?:\.\d+)?)", text_to_search, re.IGNORECASE)
                if match: 
                    price_val = match.group(1).replace(",", "")
                    # Extract the symbol too if we can
                    sym_match = re.search(r"(Rs\.?|INR|USD|\$|£|€|\b(?:R\$|Rp|RM|TWD|฿|VND|kr|Kč|zł|CHF))", match.group(0), re.IGNORECASE)
                    if sym_match and not price_currency_extracted:
                        price_currency_extracted = sym_match.group(1).upper()
                else:
                    match = re.search(r"[\d,]{2,}(?:\.\d+)?", text_to_search)
                    if match: 
                        price_val = match.group(0).replace(",", "")

        # Optional: enforce that a price is required to consider it a valid listing in fallback mode
        if not self.selectors:
            if not price_val or len(price_val.strip()) == 0:
                return
        
        if self.selectors and 'author' in self.selectors:
            author_el = item_soup.select_one(self.selectors['author'])
            if author_el: author = author_el.text.strip().replace("By ", "").strip()

        # Fetch detailed metadata (ISBN/Publisher/Condition) natively from the product page
        isbn = None
        publisher = None
        condition = None
        
        # We fetch the product page if we need deeper extraction
        if listing_url:
            prod_resp = self._get_robust_response(listing_url, max_retries=1)
            if prod_resp and prod_resp.status_code == 200:
                ai_data = local_fallback_extract(prod_resp.text)
                if ai_data:
                    isbn = ai_data.get('isbn')
                    publisher = ai_data.get('publisher')
                    condition = ai_data.get('condition')
                    # Optionally upgrade title if better
                    if ai_data.get('title') and len(ai_data['title']) > len(title or ""):
                        title = ai_data['title']

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            price=price_val,
            price_currency=price_currency_extracted,
            listing_url=listing_url,
            isbn=isbn,
            condition=condition
        )
        # Assuming we can inject publisher via dynamic kwargs if BookListing allows it, 
        # or it will be ignored by BookListing but caught by our schema.
        setattr(book, 'publisher', publisher)
        self.save_item(book)
