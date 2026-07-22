import re
from html_search_spider import HTMLSearchSpider

class OuedknissSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ouedkniss", base_url="https://www.ouedkniss.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Algeria", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OuedknissSpider(limit_pages=1).run()
