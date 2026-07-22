import re
from html_search_spider import HTMLSearchSpider

class CraigslistCaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Craigslist_CA", base_url="https://vancouver.craigslist.org",
            search_path="search/sss?query={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Canada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CraigslistCaSpider(limit_pages=1).run()
