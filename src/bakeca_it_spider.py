import re
from html_search_spider import HTMLSearchSpider

class BakecaItSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bakeca_IT", base_url="https://www.bakeca.it",
            search_path="annunci/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Italy", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BakecaItSpider(limit_pages=1).run()
