import re
from html_search_spider import HTMLSearchSpider

class WefruPhSpider(HTMLSearchSpider):
    """Spider for Wefru Philippines."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="Wefru_PH",
            base_url="https://wefru.com",
            search_path="ph/search?q={query}&page={page}",
            selectors={'container': '.listing-box', 'title': '.listing-heading', 'price': '.listing-price'}, 
            territory="Philippines",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = WefruPhSpider(limit_pages=args.limit_pages)
    spider.run()
