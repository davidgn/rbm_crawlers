from shopify_spider import ShopifyAPISpider

class DarfergianiSpider(ShopifyAPISpider):
    """
    Spider for Dar Fergiani (Libya).
    The most authoritative source for Libyan history and modern literature.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Dar Fergiani",
            base_url="https://fergianibooks.com",
            limit_pages=limit_pages,
            limit_items=limit_items
        )
        self.territory = "Libya"

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    DarfergianiSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
