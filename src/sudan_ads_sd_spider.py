import re
from html_search_spider import HTMLSearchSpider

class SudanAdsSdSpider(HTMLSearchSpider):
    """Native spider for Sudan Ads (Sudan)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SudanAds_SD", base_url="https://sudanads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Sudan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SudanAdsSdSpider(limit_pages=1).run()
