import re
from html_search_spider import HTMLSearchSpider

class MalawiAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_MW", base_url="https://mw.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Malawi", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MalawiAfribabaSpider(limit_pages=1).run()
