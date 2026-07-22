import re
from html_search_spider import HTMLSearchSpider

class HarajSaSpider(HTMLSearchSpider):
    """Spider for Haraj (Saudi Arabia). The largest online classifieds network in Saudi Arabia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Haraj",
            base_url="https://haraj.com.sa",
            search_path="search/{search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Saudi Arabia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="كتب مستعملة")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = HarajSaSpider(limit_pages=args.limit_pages)
    spider.run()
