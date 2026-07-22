import re
from html_search_spider import HTMLSearchSpider

class CraigslistFRSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CraigslistFR", base_url="https://paris.craigslist.org",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="France", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CraigslistFRSpider(limit_pages=1).run()
