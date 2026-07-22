import re
from html_search_spider import HTMLSearchSpider

class CanadaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_CA", base_url="https://canada.locanto.ca",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Canada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CanadaLocantoSpider(limit_pages=1).run()
