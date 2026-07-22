import argparse
import re
from html_search_spider import HTMLSearchSpider

class FiveMilesUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="5miles_US",
            base_url="https://5miles.com",
            search_path="search?q={search_term}&page={page}",
            selectors={
                'container': 'div.item, div.product-item, div[class*="product"]',
                'title': 'h3, .title, a[class*="title"]',
                'price': '.price, span[class*="price"]',
                'link': 'a'
            },
            territory="United States",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="5miles US Spider")
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    spider = FiveMilesUsSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
