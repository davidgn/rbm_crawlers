import re
from html_search_spider import HTMLSearchSpider

class WallapopSpainSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="WallapopSpain", base_url="https://es.wallapop.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Spain", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WallapopSpainSpider(limit_pages=1).run()
