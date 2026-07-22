import re
from html_search_spider import HTMLSearchSpider

class Reklama5MkSpider(HTMLSearchSpider):
    """Native spider for Reklama5 (North Macedonia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Reklama5_MK",
            base_url="https://reklama5.mk",
            search_path="Search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="North Macedonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="knigi")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = Reklama5MkSpider(limit_pages=args.limit_pages)
    spider.run()
