import re
from html_search_spider import HTMLSearchSpider

class PinoydealPhSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pinoydeal_PH", base_url="https://pinoydeal.ph",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Philippines", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PinoydealPhSpider(limit_pages=1).run()
