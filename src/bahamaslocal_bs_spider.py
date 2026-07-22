import re
from html_search_spider import HTMLSearchSpider

class BahamasLocalBsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BahamasLocal_BS", base_url="https://bahamaslocal.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bahamas", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BahamasLocalBsSpider(limit_pages=1).run()
