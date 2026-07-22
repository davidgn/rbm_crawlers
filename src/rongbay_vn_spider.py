import re
from html_search_spider import HTMLSearchSpider

class RongbayVnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Rongbay_VN", base_url="https://rongbay.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Vietnam", limit_pages=limit_pages
        )

if __name__ == "__main__":
    RongbayVnSpider(limit_pages=1).run()
