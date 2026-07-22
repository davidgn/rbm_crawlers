import re
from html_search_spider import HTMLSearchSpider

class MauritaniaMaurimarketSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MauriMarket_MR", base_url="https://www.maurimarket.net",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mauritania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MauritaniaMaurimarketSpider(limit_pages=1).run()
