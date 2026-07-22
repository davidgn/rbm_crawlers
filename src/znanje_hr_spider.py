from woocommerce_spider import WooCommerceAPISpider

class ZnanjeHrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Znanje (Croatia) – one of Croatia's oldest and largest
    bookstore chains and publishing houses, using WooCommerce API.
    Croatia: $44.50 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Znanje_HR",
            base_url="https://znanje.hr",
            territory="Croatia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Znanje Croatia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ZnanjeHrSpider(limit_pages=args.limit_pages).run()
