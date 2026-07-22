import re
from html_search_spider import HTMLSearchSpider

class BookchigoPhSpider(HTMLSearchSpider):
    """Spider for Bookchigo Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="Bookchigo_PH",
            base_url="https://bookchigo.ph",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.product-item', 'title': '.product-title', 'price': '.price'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = BookchigoPhSpider(limit_pages=args.limit_pages)
    spider.run()
