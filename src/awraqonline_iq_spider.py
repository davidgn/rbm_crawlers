import re
from html_search_spider import HTMLSearchSpider

class AwraqOnlineIqSpider(HTMLSearchSpider):
    """
    Spider for Awraq Online (Bookory) - Iraq.
    A modern online platform offering a diverse range of Arabic and English books with domestic delivery.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AwraqOnline",
            base_url="https://awraqonline.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Iraq",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = AwraqOnlineIqSpider(limit_pages=args.limit_pages)
    spider.run()
