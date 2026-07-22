import re
from html_search_spider import HTMLSearchSpider

class VivastreetItalySpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VivastreetItaly", base_url="https://www.vivastreet.it",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Italy", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VivastreetItalySpider(limit_pages=1).run()
