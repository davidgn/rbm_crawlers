import re
from html_search_spider import HTMLSearchSpider

class FarangmartThSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Farangmart_TH", base_url="https://farangmart.co.th",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing', 'title': 'h3', 'price': '.price-tag'},
            territory="Thailand", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FarangmartThSpider(limit_pages=1).run()
