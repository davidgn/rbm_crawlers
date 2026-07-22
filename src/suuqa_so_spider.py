import re
from html_search_spider import HTMLSearchSpider

class SuuqaSoSpider(HTMLSearchSpider):
    """Spider for Suuqa (Somalia). A popular local marketplace app/site for buying and selling used items."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Suuqa",
            base_url="https://suuqa.app",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Somalia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = SuuqaSoSpider(limit_pages=args.limit_pages)
    spider.run()
