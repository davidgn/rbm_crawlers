import re
from html_search_spider import HTMLSearchSpider

class Encuentra24NicaraguaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encuentra24Nicaragua", base_url="https://www.encuentra24.com/nicaragua-es",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Nicaragua", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Encuentra24NicaraguaSpider(limit_pages=1).run()
