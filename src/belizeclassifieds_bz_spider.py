import re
from html_search_spider import HTMLSearchSpider

class BelizeClassifiedsBzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BelizeClassifieds_BZ", base_url="https://belizeclassifieds.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Belize", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BelizeClassifiedsBzSpider(limit_pages=1).run()
