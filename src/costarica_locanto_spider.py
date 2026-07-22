import re
from html_search_spider import HTMLSearchSpider

class CostaricaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_CR", base_url="https://costarica.locanto.co.cr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Costa Rica", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CostaricaLocantoSpider(limit_pages=1).run()
