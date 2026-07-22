import re
from html_search_spider import HTMLSearchSpider

class MoldovaMaklerSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Makler_MD", base_url="https://makler.md",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Moldova", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MoldovaMaklerSpider(limit_pages=1).run()
