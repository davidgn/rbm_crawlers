import re
from html_search_spider import HTMLSearchSpider

class GumtreeAuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gumtree_AU", base_url="https://gumtree.com.au",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Australia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GumtreeAuSpider(limit_pages=1).run()
