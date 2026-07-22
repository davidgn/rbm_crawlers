import re
from html_search_spider import HTMLSearchSpider

class AuctionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Auction", base_url="https://www.auction.co.kr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="South Korea", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AuctionSpider(limit_pages=1).run()
