import re
from html_search_spider import HTMLSearchSpider

class MerrjepAlSpider(HTMLSearchSpider):
    """Native spider for MerrJep (Albania). The leading C2C classifieds site in Albania."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MerrJep_AL",
            base_url="https://www.merrjep.al",
            search_path="njoftimet?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Albania",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libra")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = MerrjepAlSpider(limit_pages=args.limit_pages)
    spider.run()
