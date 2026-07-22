import re
from html_search_spider import HTMLSearchSpider

class EverisamtingSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Everisamting", base_url="https://everisamting.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Vanuatu", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EverisamtingSpider(limit_pages=1).run()
