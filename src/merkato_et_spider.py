import re
from html_search_spider import HTMLSearchSpider

class MerkatoEtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Merkato_ET", base_url="https://merkato.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ethiopia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MerkatoEtSpider(limit_pages=1).run()
