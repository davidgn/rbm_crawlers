import re
from html_search_spider import HTMLSearchSpider

class WandalooMaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wandaloo_MA", base_url="https://wandaloo.ma",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Morocco", limit_pages=limit_pages
        )

if __name__ == "__main__":
    WandalooMaSpider(limit_pages=1).run()
