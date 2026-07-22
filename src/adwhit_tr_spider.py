import re
from html_search_spider import HTMLSearchSpider

class AdwhitTrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adwhit_TR", base_url="https://adwhit.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.ad-item', 'title': 'h3', 'price': '.price'},
            territory="Turkey", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdwhitTrSpider(limit_pages=1).run()
