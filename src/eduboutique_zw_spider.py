import json
import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class EduBoutiqueSpider(HTMLSearchSpider):
    """
    Spider for Edu Boutique (Zimbabwe).
    Uses Inertia.js extraction from the data-page attribute.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Edu Boutique",
            base_url="https://eduboutique.co.zw",
            search_path="?s={query}&post_type=product",
            selectors={'container': '#app', 'title': 'unused'},
            territory="Zimbabwe",
            limit_pages=limit_pages
        )

    def run(self):
        # We only need to fetch the first page to get the Inertia JSON for initial results
        super().run()

    def _parse_item(self, item_soup):
        # item_soup here is the #app element
        data_page = item_soup.get('data-page')
        if not data_page:
            return
            
        try:
            page_data = json.loads(data_page)
            products = page_data.get('props', {}).get('newArrivals', []) # Initial arrivals or search results
            # The structure might change for search results, but let's try to find them
            
            # If it's a search result page, results might be in a different prop
            search_results = page_data.get('props', {}).get('products', [])
            all_items = products + search_results
            
            for item in all_items:
                title = item.get('title')
                if not title: continue
                
                price = item.get('price_usd') or item.get('price_zwl')
                price_val = f"USD {price}" if item.get('price_usd') else f"ZWL {price}"
                
                author = item.get('author')
                slug = item.get('slug')
                listing_url = f"https://eduboutique.co.zw/product/{slug}" if slug else ""

                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=author,
                    price=price_val,
                    listing_url=listing_url,
                )
                self.save_item(book)
        except Exception as e:
            self.logger.error(f"Failed to parse Inertia JSON: {e}")

if __name__ == "__main__":
    spider = EduBoutiqueSpider(limit_pages=1)
    spider.run()
