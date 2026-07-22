import re
from html_search_spider import HTMLSearchSpider

class WappyCdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wappy_CD", base_url="https://wappy.cd",
            search_path="search?q={search_term}",
            selectors={'container': 'div.ad-item', 'title': 'h3', 'price': '.price'},
            territory="DR Congo", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WappyCdSpider(limit_pages=1).run()
