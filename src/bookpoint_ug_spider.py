from html_search_spider import HTMLSearchSpider

class BookpointUgSpider(HTMLSearchSpider):
    """
    Spider for BookPoint Uganda.
    Major domestic retailer with wide academic and fiction coverage.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="BookPoint",
            base_url="https://bookpointug.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Uganda",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = BookpointUgSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
