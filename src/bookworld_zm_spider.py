import json
import re
from playwright_search_spider import PlaywrightSearchSpider
from models import BookListing

class BookworldZmSpider(PlaywrightSearchSpider):
    """
    Spider for Bookworld Zambia.
    Uses Playwright to render the page and extract JSON-LD data.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookworld Zambia",
            base_url="https://www.bookworldzambia.com",
            search_path="?s={query}&post_type=product&paged={page}",
            selectors={'container': 'script[type=\"application/ld+json\"]', 'title': 'unused'},
            territory="Zambia",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # item_soup is a script[type="application/ld+json"] tag
        if not item_soup.string: return
        try:
            data = json.loads(item_soup.string)
            if isinstance(data, list):
                for item in data:
                    self._process_json_ld(item)
            else:
                self._process_json_ld(data)
        except Exception as e:
            self.logger.error(f"Failed to parse Zambia JSON-LD: {e}")

    def _process_json_ld(self, data):
        if not isinstance(data, dict) or data.get('@type') != 'Product':
            return
            
        title = data.get('name')
        if not title or title == "Matching Products FoundFound: View All": return
        
        price = data.get('offers', {}).get('price')
        currency = data.get('offers', {}).get('priceCurrency')
        listing_url = data.get('url')
        isbn = data.get('sku') or data.get('productID', '').replace('sku:', '')

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=f"{currency} {price}" if price and currency else price,
            listing_url=listing_url,
            isbn=isbn
        )
        self.save_item(book)

if __name__ == "__main__":
    spider = BookworldZmSpider(limit_pages=1)
    spider.run()
