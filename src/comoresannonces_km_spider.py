import re
from html_search_spider import HTMLSearchSpider

class ComoresAnnoncesKmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ComoresAnnonces_KM", base_url="https://comoresannonces.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Comoros", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ComoresAnnoncesKmSpider(limit_pages=1).run()
