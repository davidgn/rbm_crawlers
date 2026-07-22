import re
from html_search_spider import HTMLSearchSpider

class MyMarketGeSpider(HTMLSearchSpider):
    """Native spider for MyMarket.ge (Georgia). The largest C2C marketplace in Georgia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MyMarket_GE",
            base_url="https://www.mymarket.ge",
            search_path="en/search/?Keyword={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Georgia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = MyMarketGeSpider(limit_pages=args.limit_pages)
    spider.run()
