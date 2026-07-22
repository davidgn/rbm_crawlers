import re
from html_search_spider import HTMLSearchSpider

class JijiTzSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Jiji_TZ", base_url="https://jiji.co.tz",
            search_path="search?query={search_term}",
            selectors={'container': 'div.b-list-advert__item', 'title': 'div.qa-advert-title', 'price': 'div.qa-advert-price'},
            territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    JijiTzSpider(limit_pages=1).run()
