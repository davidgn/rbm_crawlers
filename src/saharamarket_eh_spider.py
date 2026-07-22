import re
from html_search_spider import HTMLSearchSpider

class SaharaMarketEhSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaharaMarket_EH", base_url="https://saharamarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Western Sahara", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SaharaMarketEhSpider(limit_pages=1).run()
