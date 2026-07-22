import re
from html_search_spider import HTMLSearchSpider

class OpenSooqTunisiaFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OpenSooqTunisiaFinal", base_url="https://tn.opensooq.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Tunisia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    OpenSooqTunisiaFinalSpider(limit_pages=1).run()
