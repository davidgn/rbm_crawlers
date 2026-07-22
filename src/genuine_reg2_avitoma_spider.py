import re
from html_search_spider import HTMLSearchSpider

class AvitoMASpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AvitoMA", base_url="https://www.avito.ma",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Morocco", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AvitoMASpider(limit_pages=1).run()
