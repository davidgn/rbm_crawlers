import re
from html_search_spider import HTMLSearchSpider

class RakumaJpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Rakuma_JP", base_url="https://fril.jp",
            search_path="search?query={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Japan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    RakumaJpSpider(limit_pages=1).run()
