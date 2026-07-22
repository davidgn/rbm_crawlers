import re
from html_search_spider import HTMLSearchSpider

class KaskusFjbIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="KaskusFJB_ID", base_url="https://fjb.kaskus.co.id",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KaskusFjbIdSpider(limit_pages=1).run()
