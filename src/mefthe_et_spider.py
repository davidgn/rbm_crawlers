from html_search_spider import HTMLSearchSpider

class MeftheEtSpider(HTMLSearchSpider):
    """Spider for Mefthe Ethiopia."""
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Mefthe_ET",
            base_url="https://mefthe.com",
            search_path="items/search?q={query}&page={page}",
            selectors={'container': '.item-card', 'title': 'h2.title', 'price': '.price-text'}, 
            territory="Ethiopia",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    spider = MeftheEtSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
