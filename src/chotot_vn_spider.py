from html_search_spider import HTMLSearchSpider

class ChoTotVnSpider(HTMLSearchSpider):
    """Spider for ChoTot (Vietnam). The largest classifieds network in Vietnam."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="ChoTot",
            base_url="https://www.chotot.com",
            search_path="tags/mua-ban-sach-cu?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Vietnam",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="sách")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = ChoTotVnSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
