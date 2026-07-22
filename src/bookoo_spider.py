import re
from html_search_spider import HTMLSearchSpider

class BookooSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookoo", base_url="https://www.bookoo.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item-card', 'title': 'div.item-title', 'price': '.item-price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BookooSpider(limit_pages=1).run()
