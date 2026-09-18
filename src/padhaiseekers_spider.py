from shopify_spider import ShopifyAPISpider

class PadhaiseekersSpider(ShopifyAPISpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Padhaiseekers",
            base_url="https://padhaiseekers.com",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    PadhaiseekersSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
