from html_search_spider import HTMLSearchSpider

class OlxPkSpider(HTMLSearchSpider):
    """
    Spider for OLX Pakistan.
    The largest C2C classifieds network in Pakistan, heavily used for second-hand books and textbooks.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="OLX_PK",
            base_url="https://www.olx.com.pk",
            search_path="items/q-{search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Pakistan",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = OlxPkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
