import re
from html_search_spider import HTMLSearchSpider

class MyanmarktMmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Myanmarkt_MM", base_url="https://myanmarkt.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h2.title', 'price': '.price-box'},
            territory="Myanmar", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MyanmarktMmSpider(limit_pages=1).run()
