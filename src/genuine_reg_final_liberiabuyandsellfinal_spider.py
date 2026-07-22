import re
from html_search_spider import HTMLSearchSpider

class LiberiaBuyAndSellFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LiberiaBuyAndSellFinal", base_url="https://liberiabuyandsell.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Liberia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LiberiaBuyAndSellFinalSpider(limit_pages=1).run()
