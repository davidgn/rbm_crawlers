import re
from html_search_spider import HTMLSearchSpider

class KongfzMarketSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="KongfzMarket", base_url="https://search.kongfz.com",
            search_path="product_result/?q={search_term}",
            selectors={'container': 'div.item-info', 'title': 'div.title a', 'price': '.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KongfzMarketSpider(limit_pages=1).run()
