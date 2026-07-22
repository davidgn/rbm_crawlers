import re
from html_search_spider import HTMLSearchSpider

class MauritiusWeshareSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Weshare_MU", base_url="https://www.weshare.mu",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mauritius", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MauritiusWeshareSpider(limit_pages=1).run()
