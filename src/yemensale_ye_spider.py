import re
from html_search_spider import HTMLSearchSpider

class YemenSaleYeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="YemenSale_YE", base_url="https://yemensale.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Yemen", limit_pages=limit_pages
        )

if __name__ == "__main__":
    YemenSaleYeSpider(limit_pages=1).run()
