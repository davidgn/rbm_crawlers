import re
from html_search_spider import HTMLSearchSpider

class BosniaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_BA", base_url="https://bosnia.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bosnia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BosniaLocantoSpider(limit_pages=1).run()
