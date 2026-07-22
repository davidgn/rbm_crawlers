import re
from html_search_spider import HTMLSearchSpider

class IcelandLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_IS", base_url="https://iceland.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Iceland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    IcelandLocantoSpider(limit_pages=1).run()
