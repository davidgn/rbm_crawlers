import re
from html_search_spider import HTMLSearchSpider

class FreeAdsTimeGreenlandSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FreeAdsTimeGreenland", base_url="https://www.freeadstime.org",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Greenland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FreeAdsTimeGreenlandSpider(limit_pages=1).run()
