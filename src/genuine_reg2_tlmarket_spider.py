import re
from html_search_spider import HTMLSearchSpider

class TLMarketSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TLMarket", base_url="https://www.tlmercado.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Timor-Leste", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TLMarketSpider(limit_pages=1).run()
