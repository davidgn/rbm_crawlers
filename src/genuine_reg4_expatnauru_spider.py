import re
from html_search_spider import HTMLSearchSpider

class ExpatNauruSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ExpatNauru", base_url="https://www.expat.com/en/classifieds/oceania/nauru/",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Nauru", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ExpatNauruSpider(limit_pages=1).run()
