import json
import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class BookxcessMySpider(HTMLSearchSpider):
    """
    Spider for BookXcess (Malaysia).
    Uses JSON extraction from the web-pixels-manager-setup script tag.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BookXcess",
            base_url="https://www.bookxcess.com",
            search_path="search?q={query}",
            selectors={'container': 'script#web-pixels-manager-setup', 'title': 'unused'},
            territory="Malaysia",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # item_soup is the script#web-pixels-manager-setup tag
        if not item_soup.string: return
        try:
            # Extract events string value
            # The JSON is inside a script tag, so double quotes are literal
            match = re.search(r'\"events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
            if not match:
                 # Try without escaping the first quote if it's not escaped in the string
                 match = re.search(r'events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
            
            if match:
                events_escaped = match.group(1)
                # Unescape manually
                events_json_str = events_escaped.replace('\\"', '"').replace('\\\\', '\\')
                try:
                    events_data = json.loads(events_json_str)
                except Exception as je:
                    self.logger.error(f"JSON Load error: {je}")
                    return
                
                for event in events_data:
                    # page_viewed also contains products in search results
                    if event[0] in ['search_submitted', 'page_viewed', 'search_results_viewed']:
                         data = event[1]
                         # Search result might be in searchResult or just products
                         products = data.get('searchResult', {}).get('productVariants', [])
                         if not products:
                              products = data.get('products', [])
                         
                         if not products: continue
                         
                         self.logger.info(f"Found {len(products)} products in BookXcess event {event[0]}")
                         for p in products:
                             # Handle different nested structures
                             prod = p.get('product', p)
                             title = prod.get('title') or prod.get('name')
                             if not title: continue
                             
                             author = prod.get('type') or prod.get('vendor')
                             
                             price_info = p.get('price', {})
                             price = price_info.get('amount')
                             currency = price_info.get('currencyCode')
                             
                             url_path = prod.get('url', '')
                             listing_url = self.base_url + url_path if url_path else ""

                             listing = BookListing(
                                 territory=self.territory,
                                 platform=self.platform_name,
                                 title=title,
                                 author=author,
                                 price=f"{currency} {price}" if price and currency else f"{price}",
                                 listing_url=listing_url,
                             )
                             self.save_item(listing)
        except Exception as e:
            self.logger.error(f"Failed to parse BookXcess Pixel Manager JSON: {e}")

if __name__ == "__main__":
    spider = BookxcessMySpider(limit_pages=1)
    spider.run()
