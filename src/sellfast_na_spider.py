import re
from html_search_spider import HTMLSearchSpider

class SellfastNaSpider(HTMLSearchSpider):
    """Native spider for SellFast (Namibia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SellFast_NA",
            base_url="https://sellfast.com.na",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Namibia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = SellfastNaSpider(limit_pages=args.limit_pages)
    spider.run()
