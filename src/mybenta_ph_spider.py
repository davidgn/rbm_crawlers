import re
from html_search_spider import HTMLSearchSpider

class MybentaPhSpider(HTMLSearchSpider):
    """Native spider for MyBenta (Philippines)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mybenta_PH", base_url="https://www.mybenta.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Philippines", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MybentaPhSpider(limit_pages=1).run()
