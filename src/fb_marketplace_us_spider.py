import re
from html_search_spider import HTMLSearchSpider

class FbMarketplaceUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FbMarketplace_US", base_url="https://www.facebook.com",
            search_path="marketplace/search/?query={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FbMarketplaceUsSpider(limit_pages=1).run()
