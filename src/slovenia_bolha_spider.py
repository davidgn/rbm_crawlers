import re
from html_search_spider import HTMLSearchSpider

class SloveniaBolhaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bolha_SI", base_url="https://www.bolha.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Slovenia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SloveniaBolhaSpider(limit_pages=1).run()
