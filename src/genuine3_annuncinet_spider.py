import re
from html_search_spider import HTMLSearchSpider

class AnnunciNetSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AnnunciNet", base_url="https://www.annunci.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Italy", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AnnunciNetSpider(limit_pages=1).run()
