import re
from html_search_spider import HTMLSearchSpider

class OmanOlxSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OLX_OM", base_url="https://www.olx.com.om",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Oman", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OmanOlxSpider(limit_pages=1).run()
