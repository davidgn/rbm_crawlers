import re
from html_search_spider import HTMLSearchSpider

class BaganAdsMmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BaganAds_MM", base_url="https://baganads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BaganAdsMmSpider(limit_pages=1).run()
