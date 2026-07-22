import re
from html_search_spider import HTMLSearchSpider

class LsAfribabaLsSpider(HTMLSearchSpider):
    """Native spider for Afribaba (Lesotho)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_LS",
            base_url="https://ls.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Lesotho",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = LsAfribabaLsSpider(limit_pages=args.limit_pages)
    spider.run()
