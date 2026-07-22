import re
from html_search_spider import HTMLSearchSpider

class IpaskilPhSpider(HTMLSearchSpider):
    """Spider for Ipaskil Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="Ipaskil_PH",
            base_url="https://ipaskil.com",
            search_path="ads/search?q={query}&page={page}",
            selectors={'container': '.ad-listing', 'title': '.ad-title', 'price': '.ad-price'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = IpaskilPhSpider(limit_pages=args.limit_pages)
    spider.run()
