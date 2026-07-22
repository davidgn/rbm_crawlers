import re
from html_search_spider import HTMLSearchSpider

class SingaporeCarousellSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Carousell_SG", base_url="https://www.carousell.sg",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Singapore", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SingaporeCarousellSpider(limit_pages=1).run()
