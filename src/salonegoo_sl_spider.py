import re
from html_search_spider import HTMLSearchSpider

class SalonegooSlSpider(HTMLSearchSpider):
    """Spider for Salone Goo (Sierra Leone). General classifieds in Sierra Leone."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaloneGoo",
            base_url="https://slgoo.sl",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Sierra Leone",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = SalonegooSlSpider(limit_pages=args.limit_pages)
    spider.run()
