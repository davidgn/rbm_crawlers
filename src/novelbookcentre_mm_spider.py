from html_search_spider import HTMLSearchSpider

class NovelBookCentreMmSpider(HTMLSearchSpider):
    """
    Spider for Novel Book Centre (Myanmar).
    Highly regarded retailer in Myanmar known for reprinted books and nationwide delivery.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="NovelBookCentre",
            base_url="https://www.novelbookcentre.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Myanmar",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    spider = NovelBookCentreMmSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
