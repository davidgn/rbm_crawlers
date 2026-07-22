import re
from html_search_spider import HTMLSearchSpider

class FridayAdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FridayAd", base_url="https://friday-ad.co.uk",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="United Kingdom", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FridayAdSpider(limit_pages=1).run()
