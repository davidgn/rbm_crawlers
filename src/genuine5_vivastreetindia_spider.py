import re
from html_search_spider import HTMLSearchSpider

class VivastreetIndiaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VivastreetIndia", base_url="https://vivastreet.co.in",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="India", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VivastreetIndiaSpider(limit_pages=1).run()
