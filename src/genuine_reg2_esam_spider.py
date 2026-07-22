import re
from html_search_spider import HTMLSearchSpider

class EsamSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Esam", base_url="https://esam.ir",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Iran", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EsamSpider(limit_pages=1).run()
