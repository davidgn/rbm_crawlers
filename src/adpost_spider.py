import re
from html_search_spider import HTMLSearchSpider

class AdpostSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adpost", base_url="https://www.adpost.com",
            search_path="search/?q={search_term}",
            selectors={'container': 'div.ad-list-item', 'title': 'h3.title', 'price': '.item-price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdpostSpider(limit_pages=1).run()
