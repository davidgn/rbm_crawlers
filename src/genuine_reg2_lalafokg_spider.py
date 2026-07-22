import re
from html_search_spider import HTMLSearchSpider

class LalafoKGSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LalafoKG", base_url="https://lalafo.kg",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Kyrgyzstan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LalafoKGSpider(limit_pages=1).run()
