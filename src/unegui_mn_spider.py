import re
from html_search_spider import HTMLSearchSpider

class UneguiMnSpider(HTMLSearchSpider):
    """Native spider for Unegui (Mongolia). The premier classified ads site in Mongolia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Unegui_MN",
            base_url="https://www.unegui.mn",
            search_path="l?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mongolia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="ном")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = UneguiMnSpider(limit_pages=args.limit_pages)
    spider.run()
