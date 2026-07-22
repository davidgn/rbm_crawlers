import re
from html_search_spider import HTMLSearchSpider

class MrkakaTzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mrkaka_TZ", base_url="https://mrkaka.com/tanzania",
            search_path="search?q={search_term}",
            selectors={'container': 'div.ad-item', 'title': 'h3', 'price': '.price'},
            territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MrkakaTzSpider(limit_pages=1).run()
