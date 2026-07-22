import re
from html_search_spider import HTMLSearchSpider

class LibertyBooksPkSpider(HTMLSearchSpider):
    """
    Spider for Liberty Books (Pakistan).
    One of the oldest and most popular bookstore chains in Pakistan with a massive online catalog.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LibertyBooks",
            base_url="https://www.libertybooks.com",
            search_path="index.php?route=product/search&search={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = LibertyBooksPkSpider(limit_pages=args.limit_pages)
    spider.run()
