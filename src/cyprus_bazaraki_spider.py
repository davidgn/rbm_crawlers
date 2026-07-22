import re
from html_search_spider import HTMLSearchSpider

class CyprusBazarakiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bazaraki_CY", base_url="https://www.bazaraki.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cyprus", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CyprusBazarakiSpider(limit_pages=1).run()
