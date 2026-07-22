import re
from html_search_spider import HTMLSearchSpider

class MabukoMzSpider(HTMLSearchSpider):
    """
    Spider for Mabuko (Mozambique).
    A prominent online bookstore in Mozambique offering local literature, technical, and educational books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mabuko",
            base_url="https://mabuko.co.mz",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mozambique",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livros")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = MabukoMzSpider(limit_pages=args.limit_pages)
    spider.run()
