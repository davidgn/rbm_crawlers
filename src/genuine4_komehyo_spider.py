import re
from html_search_spider import HTMLSearchSpider

class KomehyoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Komehyo", base_url="https://komehyo.jp",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KomehyoSpider(limit_pages=1).run()
