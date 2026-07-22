import re
from html_search_spider import HTMLSearchSpider

class MeselalEtSpider(HTMLSearchSpider):
    """Spider for Meselal Ethiopia."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="Meselal_ET",
            base_url="https://meselal.com",
            search_path="search.php?keywords={query}&page={page}",
            selectors={'container': '.listing-card', 'title': '.listing-title', 'price': '.listing-price'}, 
            territory="Ethiopia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = MeselalEtSpider(limit_pages=args.limit_pages)
    spider.run()
