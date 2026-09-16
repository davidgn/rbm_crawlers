import asyncio
import re
from urllib.parse import urljoin
from bs4 import BeautifulSoup
from pydantic import ValidationError
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
                await asyncio.sleep(5) # Allow CF / initial render to pass

                html = await page.get_content()
                soup = BeautifulSoup(html, "html.parser")
                container_sel = self.selectors.get('container')

                # Retry if we're still on a Cloudflare challenge (worth waiting out,
                # up to 3 extra rounds) or the page shell loaded but the (often
                # client-rendered) results haven't landed yet (worth one extra try —
                # beyond that it's more likely a stale selector than a slow render).
                no_items_retries = 0
                for extra_wait in (8, 8, 8):
                    is_challenge = "cloudflare" in html.lower() and "just a moment" in html.lower()
                    has_items = bool(container_sel and soup.select(container_sel))
                    if is_challenge:
                        self.logger.warning("Waiting longer for Cloudflare...")
                    elif container_sel and not has_items and no_items_retries < 1:
                        self.logger.info("No items rendered yet — waiting longer for page to load...")
                        no_items_retries += 1
                    else:
                        break
                    await asyncio.sleep(extra_wait)
                    html = await page.get_content()
                    soup = BeautifulSoup(html, "html.parser")
                items = soup.select(self.selectors.get('container', 'body')) if self.selectors.get('container') else []
                
                if not items:
                    self.logger.info(f"No items found on page {page_num}.")
                    break

                for item in items:
                    if self.limit_items is not None and self.items_scraped >= self.limit_items:
                        break
                    try:
                        self._parse_item(item)
                    except Exception as e:
                        self.logger.error(f"Error parsing item: {e}")

                await asyncio.sleep(2)
        except Exception as e:
            self.logger.error(f"Error: {e}")
        finally:
            browser.stop()
            
    def _parse_item(self, item_soup):
        if not item_soup:
            return

        title_el = item_soup.select_one(self.selectors.get('title', ''))
        if not title_el:
            return
        title = title_el.text.strip()

        link_el = item_soup.select_one(self.selectors.get('link', 'a'))
        listing_url = urljoin(self.base_url, link_el['href']) if link_el and link_el.has_attr('href') else None

        if not title or not listing_url:
            return

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

        price_val = None
        price_currency_extracted = self.price_currency
        price_el = item_soup.select_one(self.selectors.get('price')) if self.selectors.get('price') else None
        if price_el:
            price_text = price_el.text.strip()
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
                    best_price = None
                    for p_str, p_float, raw in parsed_prices:
                        idx = price_text.find(raw)
                        if idx != -1:
                            left_context = price_text[max(0, idx - 20):idx].lower()
                            if any(kw in left_context for kw in ["now", "sale", "used", "current", "our"]):
                                best_price = p_str
                                break
                    if not best_price:
                        best_price = parsed_prices[-1][0]
                    price_val = best_price

            if not price_currency_extracted:
                sym_match = re.search(r"(Rs\.?|INR|USD|\$|£|€|¥|\b(?:R\$|Rp|RM|TWD|฿|VND|kr|Kč|zł|CHF|GBP|EUR|JPY))\b", price_text, re.IGNORECASE)
                if sym_match:
                    raw_sym = sym_match.group(1).upper()
                    sym_map = {"$": "USD", "£": "GBP", "€": "EUR", "¥": "JPY", "RS.": "INR", "RS": "INR", "R$": "BRL"}
                    price_currency_extracted = sym_map.get(raw_sym, raw_sym)

        author = None
        author_el = item_soup.select_one(self.selectors.get('author')) if self.selectors.get('author') else None
        if author_el:
            author = author_el.text.strip()
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

