from html_search_spider import HTMLSearchSpider

class MarketmeriPgSpider(HTMLSearchSpider):
    """Spider for Marketmeri (Papua New Guinea). Leading online classifieds platform."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Marketmeri",
            base_url="https://marketmeri.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Papua New Guinea",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = MarketmeriPgSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
