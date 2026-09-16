from html_search_spider import HTMLSearchSpider

class LocantoPhSpider(HTMLSearchSpider):
    """Spider for Locanto Philippines."""
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Locanto_PH",
            base_url="https://locanto.ph",
            search_path="search?query={query}&page={page}",
            selectors={'container': '.resultRow', 'title': '.text-header', 'price': '.price-label'}, 
            territory="Philippines",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    spider = LocantoPhSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
