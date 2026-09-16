from woocommerce_spider import WooCommerceAPISpider

class OpenTrolleySgSpider(WooCommerceAPISpider):
    """
    Broad crawler for OpenTrolley (Singapore) – major online bookstore in Singapore.
    Singapore: $27.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="OpenTrolley_SG",
            base_url="https://opentrolley.com.sg",
            territory="Singapore",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="OpenTrolley Singapore bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    OpenTrolleySgSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
