import re
from html_search_spider import HTMLSearchSpider

class BazarHorizonteSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BazarHorizonte", base_url="https://www.bazarhorizonte.com.br",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Brazil", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BazarHorizonteSpider(limit_pages=1).run()
