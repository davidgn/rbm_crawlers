import re
from html_search_spider import HTMLSearchSpider

class FijiLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_FJ", base_url="https://fiji.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Fiji", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FijiLocantoSpider(limit_pages=1).run()
