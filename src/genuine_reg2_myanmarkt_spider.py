import re
from html_search_spider import HTMLSearchSpider

class MyanmarktSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Myanmarkt", base_url="https://www.myanmarkt.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MyanmarktSpider(limit_pages=1).run()
