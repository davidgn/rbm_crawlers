import re
from html_search_spider import HTMLSearchSpider

class CroatiaNjuskaloSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Njuskalo_HR", base_url="https://www.njuskalo.hr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Croatia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CroatiaNjuskaloSpider(limit_pages=1).run()
