import re
from html_search_spider import HTMLSearchSpider

class EcuadorLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_EC", base_url="https://ecuador.locanto.com.ec",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ecuador", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EcuadorLocantoSpider(limit_pages=1).run()
