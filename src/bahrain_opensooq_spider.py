import re
from html_search_spider import HTMLSearchSpider

class BahrainOpensooqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooq_BH", base_url="https://bh.opensooq.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bahrain", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BahrainOpensooqSpider(limit_pages=1).run()
