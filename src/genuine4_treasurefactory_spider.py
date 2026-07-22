import re
from html_search_spider import HTMLSearchSpider

class TreasureFactorySpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TreasureFactory", base_url="https://www.trefac.jp",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TreasureFactorySpider(limit_pages=1).run()
