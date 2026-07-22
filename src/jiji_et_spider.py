import re
from html_search_spider import HTMLSearchSpider

class JijiEtSpider(HTMLSearchSpider):
    """Spider for Jiji Ethiopia. The leading general classifieds site in Ethiopia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Jiji_ET",
            base_url="https://jiji.com.et",
            search_path="search?query={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Ethiopia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = JijiEtSpider(limit_pages=args.limit_pages)
    spider.run()
