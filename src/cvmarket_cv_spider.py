import re
from html_search_spider import HTMLSearchSpider

class CvMarketCvSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CvMarket_CV", base_url="https://cvmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Cape Verde", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CvMarketCvSpider(limit_pages=1).run()
