import re
from html_search_spider import HTMLSearchSpider

class ListAmSpider(HTMLSearchSpider):
    """Native spider for List.am (Armenia). The undisputed dominant classifieds in Armenia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="List_AM",
            base_url="https://www.list.am",
            search_path="en/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Armenia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = ListAmSpider(limit_pages=args.limit_pages)
    spider.run()
