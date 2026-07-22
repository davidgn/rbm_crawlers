import re
from html_search_spider import HTMLSearchSpider

class Q84SaleKwSpider(HTMLSearchSpider):
    """Native spider for 4Sale (Kuwait), Kuwait's primary local classifieds platform."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="4Sale_KW",
            base_url="https://q84sale.com",
            search_path="en/search?keyword={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Kuwait",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = Q84SaleKwSpider(limit_pages=args.limit_pages)
    spider.run()
