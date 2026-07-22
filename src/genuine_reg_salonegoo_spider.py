import re
from html_search_spider import HTMLSearchSpider

class SaloneGooSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaloneGoo", base_url="https://slgoo.sl",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Sierra Leone", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SaloneGooSpider(limit_pages=1).run()
