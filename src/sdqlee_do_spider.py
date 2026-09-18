from shopify_spider import ShopifyAPISpider

class SdqleeDoSpider(ShopifyAPISpider):
    """
    Spider for SDQLee (Dominican Republic).
    Uses the Shopify API.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="SDQLee",
            base_url="https://sdqlee.com",
            territory="Dominican Republic",
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
    SdqleeDoSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
