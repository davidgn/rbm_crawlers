import re
from html_search_spider import HTMLSearchSpider

class FaeroeLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_FO", base_url="https://faeroe.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Faeroe Islands", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FaeroeLocantoSpider(limit_pages=1).run()
