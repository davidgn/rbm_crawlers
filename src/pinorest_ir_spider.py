import re
from html_search_spider import HTMLSearchSpider

class PinorestIrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pinorest_IR", base_url="https://pinorest.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.card', 'title': 'h2.title', 'price': '.price-tag'},
            territory="Iran", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PinorestIrSpider(limit_pages=1).run()
