import re
from html_search_spider import HTMLSearchSpider

class TapAzSpider(HTMLSearchSpider):
    """Spider for Tap.az (Azerbaijan). The most popular classifieds website in Azerbaijan."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Tap_Az",
            base_url="https://tap.az",
            search_path="elanlar?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Azerbaijan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="kitab")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = TapAzSpider(limit_pages=args.limit_pages)
    spider.run()
