import re
from html_search_spider import HTMLSearchSpider

class AmmanAdsJoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AmmanAds_JO", base_url="https://ammanads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Jordan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AmmanAdsJoSpider(limit_pages=1).run()
