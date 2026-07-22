import re
from html_search_spider import HTMLSearchSpider

class LetgoTrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Letgo_TR", base_url="https://letgo.com/tr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h2.title', 'price': '.price'},
            territory="Turkey", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LetgoTrSpider(limit_pages=1).run()
