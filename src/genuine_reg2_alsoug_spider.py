import re
from html_search_spider import HTMLSearchSpider

class AlsougSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Alsoug", base_url="https://alsoug.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Sudan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AlsougSpider(limit_pages=1).run()
