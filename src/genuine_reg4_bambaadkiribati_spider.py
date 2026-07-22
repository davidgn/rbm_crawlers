import re
from html_search_spider import HTMLSearchSpider

class BambaAdKiribatiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BambaAdKiribati", base_url="https://bambaad.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Kiribati", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BambaAdKiribatiSpider(limit_pages=1).run()
