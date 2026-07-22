import re
from html_search_spider import HTMLSearchSpider

class BaleSuqEtSpider(HTMLSearchSpider):
    """Spider for BaleSuQ Ethiopia."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="BaleSuQ_ET",
            base_url="https://balesuq.com",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.item-list', 'title': '.item-title', 'price': '.item-price'}, 
            territory="Ethiopia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = BaleSuqEtSpider(limit_pages=args.limit_pages)
    spider.run()
