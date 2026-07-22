import re
from html_search_spider import HTMLSearchSpider

class DoubanMarketSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="DoubanMarket", base_url="https://www.douban.com",
            search_path="group/search?q={search_term}",
            selectors={'container': 'tr.pl', 'title': 'td.td-subject a', 'price': 'span.price'},
            territory="China", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DoubanMarketSpider(limit_pages=1).run()
