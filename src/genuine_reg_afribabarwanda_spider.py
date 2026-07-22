import re
from html_search_spider import HTMLSearchSpider

class AfribabaRwandaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AfribabaRwanda", base_url="https://rw.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Rwanda", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AfribabaRwandaSpider(limit_pages=1).run()
