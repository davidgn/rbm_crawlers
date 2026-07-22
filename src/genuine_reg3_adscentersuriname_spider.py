import re
from html_search_spider import HTMLSearchSpider

class AdsCenterSurinameSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AdsCenterSuriname", base_url="https://suriname.ads.center",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Suriname", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdsCenterSurinameSpider(limit_pages=1).run()
