import re
from html_search_spider import HTMLSearchSpider

class AksosBookstoreAfSpider(HTMLSearchSpider):
    """
    Spider for Aksos Book Store (Afghanistan).
    One of the largest publishers and bookstores in Kabul, maintaining an active e-commerce presence.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AksosBookstore",
            base_url="https://aksosbookstore.af",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Afghanistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = AksosBookstoreAfSpider(limit_pages=args.limit_pages)
    spider.run()
