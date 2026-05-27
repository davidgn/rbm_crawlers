import json
import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class BookshopSgSpider(HTMLSearchSpider):
    """
    Spider for Bookshop.sg (Singapore).
    Uses JSON extraction from the web-pixels-manager-setup script tag.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookshop.sg",
            base_url="https://bookshop.sg",
            search_path="search?q={query}",
            selectors={'container': 'script#web-pixels-manager-setup', 'title': 'unused'},
            territory="Singapore",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        if not item_soup.string: return
        try:
            match = re.search(r'\"events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
            if not match: match = re.search(r'events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
            if match:
                events_escaped = match.group(1)
                events_json_str = events_escaped.replace('\\"', '"').replace('\\\\', '\\')
                events_data = json.loads(events_json_str)
                for event in events_data:
                    if event[0] in ['search_submitted', 'page_viewed', 'search_results_viewed']:
                         data = event[1]
                         products = data.get('searchResult', {}).get('productVariants', [])
                         if not products: products = data.get('products', [])
                         for p in products:
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
            self.logger.error(f"Failed to parse Bookshop.sg JSON: {e}")

if __name__ == "__main__":
    spider = BookshopSgSpider(limit_pages=1)
    spider.run()
