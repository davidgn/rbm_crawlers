import re
from html_search_spider import HTMLSearchSpider

class IranketabIrSpider(HTMLSearchSpider):
    """
    Spider for Iranketab (Iran).
    A major online retailer in Iran offering extensive Persian fiction, non-fiction, and academic titles.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Iranketab",
            base_url="https://www.iranketab.ir",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Iran",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="کتاب")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = IranketabIrSpider(limit_pages=args.limit_pages)
    spider.run()
