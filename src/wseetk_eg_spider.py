import re
from html_search_spider import HTMLSearchSpider

class WseetkEgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wseetk_EG", base_url="https://wseetk.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing', 'title': 'h3', 'price': '.price'},
            territory="Egypt", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WseetkEgSpider(limit_pages=1).run()
