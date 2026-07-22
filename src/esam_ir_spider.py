import re
from html_search_spider import HTMLSearchSpider

class EsamIrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Esam_IR", base_url="https://esam.ir",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h2', 'price': '.price'},
            territory="Iran", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EsamIrSpider(limit_pages=1).run()
