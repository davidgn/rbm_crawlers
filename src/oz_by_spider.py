from woocommerce_spider import WooCommerceAPISpider

class OzBySpider(WooCommerceAPISpider):
    """
    Broad crawler for OZ.by (Belarus) – one of the largest Belarusian book
    retailers with a WooCommerce-compatible REST API.
    Belarus: $57.98 / 10 kg M-Bag to the US (SAL/Economy, Priority Air).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="OZ.by",
            base_url="https://oz.by",
            territory="Belarus",
            limit_pages=limit_pages,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="OZ.by Belarus bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    OzBySpider(limit_pages=args.limit_pages).run()
