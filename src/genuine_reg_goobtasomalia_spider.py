import re
from html_search_spider import HTMLSearchSpider

class GoobtaSomaliaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GoobtaSomalia", base_url="https://goobta.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Somalia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GoobtaSomaliaSpider(limit_pages=1).run()
