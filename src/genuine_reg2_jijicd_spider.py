import re
from html_search_spider import HTMLSearchSpider

class JijiCDSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="JijiCD", base_url="https://jiji.cd",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="DR Congo", limit_pages=limit_pages
        )

if __name__ == "__main__":
    JijiCDSpider(limit_pages=1).run()
