import re
from html_search_spider import HTMLSearchSpider

class AfribabaUgandaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AfribabaUganda", base_url="https://ug.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Uganda", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AfribabaUgandaSpider(limit_pages=1).run()
