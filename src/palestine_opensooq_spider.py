import re
from html_search_spider import HTMLSearchSpider

class PalestineOpensooqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooq_PS", base_url="https://ps.opensooq.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Palestine", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PalestineOpensooqSpider(limit_pages=1).run()
