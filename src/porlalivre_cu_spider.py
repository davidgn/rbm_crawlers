import re
from html_search_spider import HTMLSearchSpider

class PorlalivreCuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Porlalivre_CU", base_url="https://porlalivre.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Cuba", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PorlalivreCuSpider(limit_pages=1).run()
