import re
from html_search_spider import HTMLSearchSpider

class DominicanCorotosSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Corotos_DO", base_url="https://www.corotos.com.do",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Dominican Republic", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DominicanCorotosSpider(limit_pages=1).run()
