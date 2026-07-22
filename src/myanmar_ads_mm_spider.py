import re
from html_search_spider import HTMLSearchSpider

class MyanmarAdsMmSpider(HTMLSearchSpider):
    """Native spider for Myanmar Ads (Myanmar)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MyanmarAds_MM", base_url="https://myanmarads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MyanmarAdsMmSpider(limit_pages=1).run()
