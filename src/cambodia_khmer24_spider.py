import re
from html_search_spider import HTMLSearchSpider

class CambodiaKhmer24Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Khmer24_KH", base_url="https://www.khmer24.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cambodia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CambodiaKhmer24Spider(limit_pages=1).run()
