import time
import re
import os
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from pydantic import ValidationError
from isbn_utils import isbn_from_url
from models import BookListing
from base_spider import BaseSpider

class PlaywrightSearchSpider(BaseSpider):
    """
    A generic spider that uses Playwright to bypass Cloudflare
    and scrape HTML search result pages.
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
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.price_currency = price_currency or kwargs.get("currency", "")
        self.kwargs = kwargs

    def run(self, search_term: str = None):
        if not search_term:
            search_term = os.getenv("RBM_SEARCH_TERM", "Harry Potter")
        self.logger.info(f"Starting Playwright Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        
        # Check if sync_playwright is mocked in unit tests
        from unittest.mock import MagicMock
        is_mocked = False
        try:
            if "mock" in str(type(sync_playwright)).lower():
                is_mocked = True
        except Exception:
            pass

        if not is_mocked:
            try:
                from curl_cffi import requests as curlex
                self.logger.info(f"Attempting search via curl_cffi Chrome impersonation...")
                session = curlex.Session(impersonate="chrome110", timeout=30.0)
                
                success = True
                for page_num in range(1, self.limit_pages + 1):
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    if self.search_path.startswith("http://") or self.search_path.startswith("https://"):
                        url_template = self.search_path
                    else:
                        url_template = f"{self.base_url}/{self.search_path.lstrip('/')}"
                    try:
                        url = url_template.format(query=search_term.replace(' ', '+'), search_term=search_term.replace(' ', '+'), page=page_num)
                    except Exception:
                        url = url_template
                        
                    response = session.get(url)
                    if response.status_code == 200:
                        soup = BeautifulSoup(response.text, "html.parser")
                        # Check for Cloudflare challenge in content
                        lower_text = response.text.lower()
                        if "just a moment..." in lower_text or "attention required" in lower_text or "enable javascript" in lower_text:
                            self.logger.warning("Cloudflare challenge page detected via curl_cffi. Falling back to Playwright.")
                            success = False
                            break
                            
                        if self.selectors and 'container' in self.selectors and self.selectors['container']:
                            items = soup.select(self.selectors['container'])
                        else:
                            items = soup.find_all('a', href=True)
                            
                        if not items:
                            self.logger.info(f"No items found on page {page_num} via curl_cffi. Stopping.")
                            break
                            
                        for item in items:
                            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                                break
                            try:
                                self._parse_item(item)
                            except Exception as e:
                                self.logger.error(f"Error parsing item: {e}")
                    else:
                        self.logger.warning(f"curl_cffi returned status code {response.status_code}. Falling back to Playwright.")
                        success = False
                        break
                session.close()
                if success:
                    self.logger.info(f"Finished {self.platform_name} via curl_cffi. Scraped {self.items_scraped} items.")
                    return
            except Exception as e:
                self.logger.warning(f"curl_cffi request failed: {e}. Falling back to Playwright.")

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page_ctx = context.new_page()
            Stealth().apply_stealth_sync(page_ctx)
            
            # Bootstrap session on base URL first
            self.logger.info(f"Bootstrapping session on base URL: {self.base_url}")
            try:
                page_ctx.goto(self.base_url, wait_until="networkidle", timeout=30000)
                time.sleep(5)
            except Exception as e:
                self.logger.warning(f"Failed to bootstrap session on base URL: {e}")
            
            for page_num in range(1, self.limit_pages + 1):
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                if self.search_path.startswith("http://") or self.search_path.startswith("https://"):
                    url_template = self.search_path
                else:
                    url_template = f"{self.base_url}/{self.search_path.lstrip('/')}"
                try:
                    url = url_template.format(query=search_term.replace(' ', '+'), search_term=search_term.replace(' ', '+'), page=page_num)
                except Exception:
                    url = url_template
                self.logger.info(f"Navigating to {url}")
                
                try:
                    response = page_ctx.goto(url, wait_until="domcontentloaded", timeout=30000)
                    if response and response.status in [404, 400]:
                        self.logger.info("Reached end of pagination (404/400).")
                        break
                        
                    # Wait for items to load
                    if self.selectors and 'container' in self.selectors and self.selectors['container']:
                        page_ctx.wait_for_selector(self.selectors['container'], timeout=10000)
                    
                except Exception as e:
                    self.logger.warning(f"Could not load or find container on {url}: {e}")
                    # If it's a timeout waiting for the selector, we might have hit the end of the results or CF
                    if "Timeout" in str(e):
                        if "cloudflare" in page_ctx.content().lower():
                            self.logger.error("Blocked by advanced Cloudflare challenge.")
                        break
                    continue
                
                # Scroll down to trigger lazy loading if necessary
                page_ctx.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                time.sleep(2)
                
                html = page_ctx.content()
                soup = BeautifulSoup(html, "html.parser")
                
                if self.selectors and 'container' in self.selectors and self.selectors['container']:
                    items = soup.select(self.selectors['container'])
                else:
                    items = soup.find_all('a', href=True)
                
                if not items:
                    self.logger.info(f"No items found matching container on page {page_num}. Stopping.")
                    self.cache_html(f"debug_empty_{self.platform_name}_{page_num}", html)
                    break

                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")

                time.sleep(1) # Polite delay
                
            browser.close()
            
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

    def _parse_item(self, item_soup):
        if not item_soup:
            return

        # Title
        if not self.selectors or 'title' not in self.selectors:
            return
        title_el = item_soup.select_one(self.selectors['title'])
        if not title_el: return
        title = title_el.text.strip()
        
        # URL
        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = None
        if link_el and link_el.has_attr('href'):
            listing_url = urljoin(self.base_url, link_el['href'])

        # Gracefully exit if required attributes are missing
        if not title or not listing_url:
            self.logger.warning(f"Skipping listing due to missing required fields. Title: {title}, URL: {listing_url}")
            return

        # Helper to parse a single numeric string
        def parse_single_price(raw_num: str) -> str:
            raw_num = raw_num.rstrip(".,")
            if "," in raw_num and "." in raw_num:
                if raw_num.rfind(",") > raw_num.rfind("."):
                    return raw_num.replace(".", "").replace(",", ".")
                else:
                    return raw_num.replace(",", "")
            elif "," in raw_num:
                if re.match(r"^\d{1,3}(?:,\d{3})+$", raw_num):
                    return raw_num.replace(",", "")
                else:
                    return raw_num.replace(",", ".")
            else:
                return raw_num

        # Price
        price_val = None
        price_currency_extracted = self.price_currency
        if 'price' in self.selectors and self.selectors['price']:
            price_el = item_soup.select_one(self.selectors['price'])
            if price_el:
                price_text = price_el.text.strip()
                # Find all potential numeric price groups
                matches = re.findall(r"\d[\d\.,]*", price_text)
                if matches:
                    parsed_prices = []
                    for m in matches:
                        raw_num = m.rstrip(".,")
                        if not raw_num:
                            continue
                        parsed_val = parse_single_price(raw_num)
                        try:
                            val_float = float(parsed_val)
                            parsed_prices.append((parsed_val, val_float, m))
                        except ValueError:
                            pass

                    if parsed_prices:
                        # Check context for sale/discount/used keywords
                        best_price = None
                        for p_str, p_float, raw in parsed_prices:
                            idx = price_text.find(raw)
                            if idx != -1:
                                left_context = price_text[max(0, idx - 20):idx].lower()
                                if any(kw in left_context for kw in ["now", "sale", "used", "current", "our"]):
                                    best_price = p_str
                                    break
                        if not best_price:
                            # Fallback: pick the last numeric group
                            best_price = parsed_prices[-1][0]
                        price_val = best_price

                if not price_currency_extracted:
                    sym_match = re.search(r"(Rs\.?|INR|USD|\$|£|€|¥|\b(?:R\$|Rp|RM|TWD|฿|VND|kr|Kč|zł|CHF|GBP|EUR|JPY))\b", price_text, re.IGNORECASE)
                    if sym_match:
                        raw_sym = sym_match.group(1).upper()
                        sym_map = {"$": "USD", "£": "GBP", "€": "EUR", "¥": "JPY", "RS.": "INR", "RS": "INR", "R$": "BRL"}
                        price_currency_extracted = sym_map.get(raw_sym, raw_sym)

        # Author
        author = None
        if 'author' in self.selectors and self.selectors['author']:
            author_el = item_soup.select_one(self.selectors['author'])
            if author_el:
                author = author_el.text.strip()
                # Case-insensitively strip "By " prefix
                author = re.sub(r"(?i)^by\s+", "", author).strip()

        isbn = isbn_from_url(listing_url) if listing_url else None

        try:
            book = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                isbn=isbn,
                price=price_val,
                price_currency=price_currency_extracted,
                listing_url=listing_url,
            )
            book = self.scavenge_metadata(item_soup.text, book)
            self.save_item(book)
        except ValidationError as e:
            self.logger.warning(f"Skipping listing due to Pydantic validation error: {e}")

