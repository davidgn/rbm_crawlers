import re
from html_search_spider import HTMLSearchSpider

class MrOldBooksPkSpider(HTMLSearchSpider):
    """
    Spider for Mr Old Books (Pakistan).
    An online store that offers a curated collection of rare and pre-loved books.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MrOldBooks",
            base_url="https://mroldbooks.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = MrOldBooksPkSpider(limit_pages=args.limit_pages)
    spider.run()
