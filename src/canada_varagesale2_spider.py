import re
from html_search_spider import HTMLSearchSpider

class CanadaVaragesale2Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VarageSale_CA", base_url="https://www.varagesale.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Canada", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CanadaVaragesale2Spider(limit_pages=1).run()
