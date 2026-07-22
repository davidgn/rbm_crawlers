import re
from html_search_spider import HTMLSearchSpider

class OnlineBookshopBdSpider(HTMLSearchSpider):
    """
    Spider for OnlineBookshop (Bangladesh).
    Features a dedicated section for "Used Books" categorized by condition.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OnlineBookshop",
            base_url="https://onlinebookshop.com.bd",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bangladesh",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="used books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = OnlineBookshopBdSpider(limit_pages=args.limit_pages)
    spider.run()
