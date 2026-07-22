import re
from html_search_spider import HTMLSearchSpider

class CubaRevolicoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Revolico_CU", base_url="https://www.revolico.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cuba", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CubaRevolicoSpider(limit_pages=1).run()
