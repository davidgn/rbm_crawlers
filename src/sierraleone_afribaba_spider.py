import re
from html_search_spider import HTMLSearchSpider

class SierraleoneAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_SL", base_url="https://sl.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Sierra Leone", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SierraleoneAfribabaSpider(limit_pages=1).run()
