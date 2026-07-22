import re
from html_search_spider import HTMLSearchSpider

class DivarSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Divar", base_url="https://divar.ir",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Iran", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DivarSpider(limit_pages=1).run()
