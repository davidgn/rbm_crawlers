import re
from html_search_spider import HTMLSearchSpider

class UmunaraBurundiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="UmunaraBurundi", base_url="https://umunara.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Burundi", limit_pages=limit_pages
        )

if __name__ == "__main__":
    UmunaraBurundiSpider(limit_pages=1).run()
