import re
from html_search_spider import HTMLSearchSpider

class SuningSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Suning", base_url="https://search.suning.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SuningSpider(limit_pages=1).run()
