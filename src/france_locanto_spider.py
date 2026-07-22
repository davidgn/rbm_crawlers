import re
from html_search_spider import HTMLSearchSpider

class FranceLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_FR", base_url="https://france.locanto.fr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="France", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FranceLocantoSpider(limit_pages=1).run()
