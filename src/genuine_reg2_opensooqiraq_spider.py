import re
from html_search_spider import HTMLSearchSpider

class OpenSooqIraqSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooqIraq", base_url="https://iq.opensooq.com/en",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Iraq", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OpenSooqIraqSpider(limit_pages=1).run()
