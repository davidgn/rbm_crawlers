import re
from html_search_spider import HTMLSearchSpider

class PbazaarBdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pbazaar_BD", base_url="https://www.pbazaar.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bangladesh", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PbazaarBdSpider(limit_pages=1).run()
