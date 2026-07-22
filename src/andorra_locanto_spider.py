import re
from html_search_spider import HTMLSearchSpider

class AndorraLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_AD", base_url="https://andorra.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Andorra", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AndorraLocantoSpider(limit_pages=1).run()
