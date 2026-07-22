import re
import urllib.parse
from curl_cffi import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class MagentoSearchSpider(BaseSpider):
    """Base search spider for Magento / Adobe Commerce independent campus bookstore platforms."""

    def __init__(self, platform_name: str, base_url: str, territory: str = "United States", price_currency: str = "USD", limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url.rstrip('/')
        if not self.base_url.startswith('http'):
            self.base_url = f"https://{self.base_url}"
        self.price_currency = price_currency
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def _get_search_url(self, search_term: str, page: int = 1) -> str:
        encoded_term = urllib.parse.quote(search_term)
        return f"{self.base_url}/catalogsearch/result/index/?p={page}&q={encoded_term}"

    def run(self, search_term: str = "potter") -> list[BookListing]:
        self.logger.info(f"Starting Magento search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        scraped_items = []

        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
        }

        for page in range(1, self.limit_pages + 1):
            url = self._get_search_url(search_term, page)
            self.logger.info(f"Fetching Magento page {page}: {url}")
            try:
                r = requests.get(url, headers=headers, impersonate="chrome110", timeout=10)
                if r.status_code != 200:
                    self.logger.warning(f"Got status {r.status_code} for {url}")
                    break

                soup = BeautifulSoup(r.text, 'html.parser')
                items = soup.select('li.product-item, div.product-item-info, .product-item')
                if not items:
                    items = soup.select('.category-products li.item, .search-result-item')

                if not items:
                    self.logger.info(f"No items found on page {page}. Stopping.")
                    break

                page_count = 0
                for item in items:
                    title_elem = item.select_one('.product-item-name a, .product-name a, a.product-item-link, h2.product-name a')
                    price_elem = item.select_one('.price-wrapper .price, span.price, .price-box .price')
                    link_elem = title_elem or item.select_one('a.product-item-photo, a[href]')

                    if not title_elem or not link_elem:
                        continue

                    title = title_elem.get_text(strip=True)
                    item_url = link_elem.get('href', '')
                    if not item_url.startswith('http'):
                        item_url = urllib.parse.urljoin(self.base_url, item_url)

                    price_text = price_elem.get_text(strip=True) if price_elem else "0.00"
                    price_match = re.search(r'[\$\£\€]?\s*([0-9]+\.?[0-9]*)', price_text)
                    price = float(price_match.group(1)) if price_match else 0.0

                    listing = BookListing(
                        title=title,
                        listing_url=item_url,
                        price=f"{price:.2f}",
                        price_currency=self.price_currency,
                        platform=self.platform_name,
                        territory=self.territory
                    )
                    self.save_item(listing)
                    scraped_items.append(listing)
                    page_count += 1

                    if self.limit_items and len(scraped_items) >= self.limit_items:
                        break

                if self.limit_items and len(scraped_items) >= self.limit_items:
                    break

            except Exception as e:
                self.logger.error(f"Error scraping Magento page {page}: {e}")
                break

        self.logger.info(f"Finished {self.platform_name}. Scraped {len(scraped_items)} items.")
        return scraped_items
