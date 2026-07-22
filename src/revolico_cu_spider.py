import re
from html_search_spider import HTMLSearchSpider

class RevolicoCuSpider(HTMLSearchSpider):
    """Spider for Revolico (Cuba). The primary online marketplace in Cuba, functioning like Craigslist."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Revolico",
            base_url="https://www.revolico.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Cuba",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = RevolicoCuSpider(limit_pages=args.limit_pages)
    spider.run()
