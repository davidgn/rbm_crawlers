import re
from html_search_spider import HTMLSearchSpider

class AlibooksCdSpider(HTMLSearchSpider):
    """
    Spider for Alibooks (DR Congo).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Alibooks",
            base_url="https://alibooks.cd",
            search_path="?s={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="DR Congo",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = AlibooksCdSpider(limit_pages=args.limit_pages)
    spider.run()
