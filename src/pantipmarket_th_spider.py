import re
from html_search_spider import HTMLSearchSpider

class PantipmarketThSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pantipmarket_TH", base_url="https://www.pantipmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Thailand", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PantipmarketThSpider(limit_pages=1).run()
