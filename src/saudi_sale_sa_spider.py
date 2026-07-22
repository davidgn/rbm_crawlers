import re
from html_search_spider import HTMLSearchSpider

class SaudiSaleSaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaudiSale_SA", base_url="https://saudisale.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Saudi Arabia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SaudiSaleSaSpider(limit_pages=1).run()
