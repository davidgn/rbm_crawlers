import re
from html_search_spider import HTMLSearchSpider

class SlovakiaBazosSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bazos_SK", base_url="https://www.bazos.sk",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Slovakia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SlovakiaBazosSpider(limit_pages=1).run()
