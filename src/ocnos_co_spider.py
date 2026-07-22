import re
from html_search_spider import HTMLSearchSpider

class OcnosCoSpider(HTMLSearchSpider):
    """
    Spider for Libreria Ocnos (Colombia).
    A prominent independent used-book buyer and seller based in Bogota.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ocnos",
            base_url="https://libreriaocnos.com",
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
    
    spider = OcnosCoSpider(limit_pages=args.limit_pages)
    spider.run()
