from html_search_spider import HTMLSearchSpider

class YulaLaSpider(HTMLSearchSpider):
    """Spider for Yula.la (Laos). Leading online marketplace and classifieds in Laos."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Yula",
            base_url="https://www.yula.la",
            search_path="en/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Laos",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = YulaLaSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
