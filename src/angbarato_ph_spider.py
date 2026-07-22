import re
from html_search_spider import HTMLSearchSpider

class AngBaratoPhSpider(HTMLSearchSpider):
    """Spider for Ang Barato Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="AngBarato_PH",
            base_url="https://angbarato.com",
            search_path="search?keyword={query}&page={page}",
            selectors={'container': '.item-block', 'title': '.item-name', 'price': '.item-cost'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = AngBaratoPhSpider(limit_pages=args.limit_pages)
    spider.run()
