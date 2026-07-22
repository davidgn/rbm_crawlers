import re
from html_search_spider import HTMLSearchSpider

class LesothoLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_LS", base_url="https://lesotho.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Lesotho", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LesothoLocantoSpider(limit_pages=1).run()
