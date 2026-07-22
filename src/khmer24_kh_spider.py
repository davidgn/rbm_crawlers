import re
from html_search_spider import HTMLSearchSpider

class Khmer24KhSpider(HTMLSearchSpider):
    """Spider for Khmer24 (Cambodia). The most popular online classifieds platform in Cambodia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Khmer24",
            base_url="https://www.khmer24.com",
            search_path="en/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Cambodia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = Khmer24KhSpider(limit_pages=args.limit_pages)
    spider.run()
