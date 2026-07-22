import re
from html_search_spider import HTMLSearchSpider

class MauriMarketMrSpider(HTMLSearchSpider):
    """Native spider for Maurimarket (Mauritania). Dedicated local classifieds."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MauriMarket_MR",
            base_url="https://maurimarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mauritania",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = MauriMarketMrSpider(limit_pages=args.limit_pages)
    spider.run()
