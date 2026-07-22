import re
from html_search_spider import HTMLSearchSpider

class ClasifyInSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Clasify_IN", base_url="https://clasify.in",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing', 'title': 'h2', 'price': '.price'},
            territory="India", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClasifyInSpider(limit_pages=1).run()
