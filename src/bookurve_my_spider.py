import json
import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class BookurveMySpider(HTMLSearchSpider):
    """
    Spider for Bookurve (Malaysia).
    Uses Next.js extraction from the __NEXT_DATA__ script tag.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookurve",
            base_url="https://www.bookurve.com",
            search_path="search/{query}",
            selectors={'container': 'script#__NEXT_DATA__', 'title': 'unused'},
            territory="Malaysia",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # item_soup is the script#__NEXT_DATA__ tag
        if not item_soup.string: return
        try:
            data = json.loads(item_soup.string)
            # Find the path in the JSON recursively
            def find_products(d):
                if isinstance(d, dict):
                    if 'results' in d and isinstance(d['results'], list): return d['results']
                    if 'books' in d and isinstance(d['books'], list): return d['books']
                    for v in d.values():
                        res = find_products(v)
                        if res: return res
                elif isinstance(d, list):
                    for i in d:
                        res = find_products(i)
                        if res: return res
                return None

            results = find_products(data)
            if not results: return
            
            for book_data in results:
                title = book_data.get('title') or book_data.get('name')
                if not title: continue
                
                author = book_data.get('author')
                price = book_data.get('price')
                slug = book_data.get('slug')
                listing_url = f"{self.base_url}/book/{slug}" if slug else ""

                listing = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=author,
                    price=f"MYR {price}" if price else None,
                    listing_url=listing_url,
                )
                self.save_item(listing)
        except Exception as e:
            self.logger.error(f"Failed to parse Bookurve NEXT_DATA: {e}")

if __name__ == "__main__":
    spider = BookurveMySpider(limit_pages=1)
    spider.run()
