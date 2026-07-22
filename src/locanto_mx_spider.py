import re
from html_search_spider import HTMLSearchSpider

class LocantoMxSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_MX", base_url="https://www.locanto.com.mx",
            search_path="search?query={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mexico", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoMxSpider(limit_pages=1).run()
