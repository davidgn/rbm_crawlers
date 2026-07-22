import re
from html_search_spider import HTMLSearchSpider

class SeledaEtSpider(HTMLSearchSpider):
    """Spider for Seleda Ethiopia."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="Seleda_ET",
            base_url="https://seleda.com",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.listing-item', 'title': 'h3.title', 'price': '.price-tag'}, 
            territory="Ethiopia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = SeledaEtSpider(limit_pages=args.limit_pages)
    spider.run()
