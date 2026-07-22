import re
from html_search_spider import HTMLSearchSpider

class AdvertsIeSpider(HTMLSearchSpider):
    """Spider for Adverts.ie (Ireland). Major Irish marketplace for job lots and used books."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adverts_IE",
            base_url="https://www.adverts.ie",
            search_path="for-sale/q_{search_term}/",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ireland",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = AdvertsIeSpider(limit_pages=args.limit_pages)
    spider.run()
