import re
from html_search_spider import HTMLSearchSpider

class CatchyzRwSpider(HTMLSearchSpider):
    """Spider for Catchyz (Rwanda). Online classifieds and marketplace in Rwanda."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Catchyz_RW",
            base_url="https://rw.catchyz.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Rwanda",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = CatchyzRwSpider(limit_pages=args.limit_pages)
    spider.run()
