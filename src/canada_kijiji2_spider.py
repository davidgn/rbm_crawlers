import re
from html_search_spider import HTMLSearchSpider

class CanadaKijiji2Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kijiji_CA", base_url="https://www.kijiji.ca",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Canada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CanadaKijiji2Spider(limit_pages=1).run()
