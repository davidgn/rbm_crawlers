import re
from html_search_spider import HTMLSearchSpider

class BookSpinePhSpider(HTMLSearchSpider):
    """Spider for BookSpine Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="BookSpine_PH",
            base_url="https://bookspine.ph",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.product-card', 'title': '.product-title', 'price': '.price-display'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = BookSpinePhSpider(limit_pages=args.limit_pages)
    spider.run()
