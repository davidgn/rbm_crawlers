import re
from html_search_spider import HTMLSearchSpider

class SediaDzSpider(HTMLSearchSpider):
    """
    Spider for Sedia (Algeria).
    Major educational and literature publisher/bookseller in Algeria.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sedia",
            base_url="https://sedia-dz.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Algeria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = SediaDzSpider(limit_pages=args.limit_pages)
    spider.run()
