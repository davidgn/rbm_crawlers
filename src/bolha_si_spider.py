from html_search_spider import HTMLSearchSpider

class BolhaSiSpider(HTMLSearchSpider):
    """Native spider for Bolha (Slovenia). The dominant local classifieds site."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Bolha_SI",
            base_url="https://www.bolha.com",
            search_path="iskanje?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Slovenia",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="knjige")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    spider = BolhaSiSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
