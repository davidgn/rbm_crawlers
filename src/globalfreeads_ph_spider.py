import re
from html_search_spider import HTMLSearchSpider

class GlobalFreeAdsPhSpider(HTMLSearchSpider):
    """Spider for GlobalFreeAds Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="GlobalFreeAds_PH",
            base_url="https://global-free-classified-ads.com",
            search_path="philippines/search?q={query}&page={page}",
            selectors={'container': '.classified-item', 'title': 'h4.title', 'price': '.price-val'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = GlobalFreeAdsPhSpider(limit_pages=args.limit_pages)
    spider.run()
