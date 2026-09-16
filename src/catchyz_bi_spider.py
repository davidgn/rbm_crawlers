from html_search_spider import HTMLSearchSpider

class CatchyzBiSpider(HTMLSearchSpider):
    """Spider for Catchyz (Burundi). Online classifieds and marketplace in Burundi."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Catchyz_BI",
            base_url="https://bi.catchyz.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Burundi",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = CatchyzBiSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
