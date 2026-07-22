import re
from html_search_spider import HTMLSearchSpider

class Belgium2dehandsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="2dehands_BE", base_url="https://www.2dehands.be",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Belgium", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Belgium2dehandsSpider(limit_pages=1).run()
