import re
from html_search_spider import HTMLSearchSpider

class VestniktmTmSpider(HTMLSearchSpider):
    """Spider for VestnikTM (Turkmenistan). Prominent classifieds website in Turkmenistan."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VestnikTM",
            base_url="https://vestniktm.com",
            search_path="search.php?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Turkmenistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="книги")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = VestniktmTmSpider(limit_pages=args.limit_pages)
    spider.run()
