import re
from html_search_spider import HTMLSearchSpider

class EtMarketEtSpider(HTMLSearchSpider):
    """Native spider for ET Market (Ethiopia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="EtMarket_ET", base_url="https://etmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ethiopia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EtMarketEtSpider(limit_pages=1).run()
