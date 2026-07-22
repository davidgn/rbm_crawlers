import re
from html_search_spider import HTMLSearchSpider

class TorreDeBabelCoSpider(HTMLSearchSpider):
    """
    Spider for Torre de Babel (Colombia).
    A major second-hand bookstore in Bogota that buys and sells used books with home delivery.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TorreDeBabel",
            base_url="https://libreriatorredebabel.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Colombia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = TorreDeBabelCoSpider(limit_pages=args.limit_pages)
    spider.run()
