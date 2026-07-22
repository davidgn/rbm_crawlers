import re
from html_search_spider import HTMLSearchSpider

class IrelandLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_IE", base_url="https://ireland.locanto.ie",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ireland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    IrelandLocantoSpider(limit_pages=1).run()
