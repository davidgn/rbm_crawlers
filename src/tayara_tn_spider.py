import re
from html_search_spider import HTMLSearchSpider

class TayaraTnSpider(HTMLSearchSpider):
    """Spider for Tayara (Tunisia). The primary general-purpose classifieds site in Tunisia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Tayara",
            base_url="https://www.tayara.tn",
            search_path="search?search_term={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Tunisia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = TayaraTnSpider(limit_pages=args.limit_pages)
    spider.run()
