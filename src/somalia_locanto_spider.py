import re
from html_search_spider import HTMLSearchSpider

class SomaliaLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_SO", base_url="https://somalia.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Somalia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SomaliaLocantoSpider(limit_pages=1).run()
