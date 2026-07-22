import re
from html_search_spider import HTMLSearchSpider

class ZomaMgSpider(HTMLSearchSpider):
    """
    Spider for Zoma (Madagascar).
    A major online marketplace in Madagascar with a dedicated bookstore section.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Zoma",
            base_url="https://zoma.mg",
            search_path="recherche?controller=search&s={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Madagascar",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = ZomaMgSpider(limit_pages=args.limit_pages)
    spider.run()
