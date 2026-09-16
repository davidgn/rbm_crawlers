from html_search_spider import HTMLSearchSpider


class ZimclassifiedsZwSpider(HTMLSearchSpider):
    """Spider for Zimclassifieds (Zimbabwe). General C2C classifieds platform covering books,
    electronics, clothing, and all merchandise categories across Zimbabwe."""

    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Zimclassifieds_ZW", base_url="https://www.zimclassifieds.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.classified-item', 'title': 'h3.item-title', 'price': 'span.price'},
            territory="Zimbabwe", limit_pages=limit_pages, limit_items=limit_items
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()

    spider = ZimclassifiedsZwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
