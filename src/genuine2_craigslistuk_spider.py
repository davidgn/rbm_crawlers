import re
from html_search_spider import HTMLSearchSpider

class CraigslistUKSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CraigslistUK", base_url="https://london.craigslist.org",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="United Kingdom", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CraigslistUKSpider(limit_pages=1).run()
