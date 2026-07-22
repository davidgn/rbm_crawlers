import re
from html_search_spider import HTMLSearchSpider

class ShopeeBrazilSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ShopeeBrazil", base_url="https://shopee.com.br",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Brazil", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ShopeeBrazilSpider(limit_pages=1).run()
