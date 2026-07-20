from woocommerce_spider import WooCommerceAPISpider

class IkonaMkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Ikona Bookstore (North Macedonia) using WooCommerce API.
    Prices are in Macedonian Denar (MKD).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ikona Books",
            base_url="https://ikona.mk",
            territory="North Macedonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    IkonaMkSpider(limit_pages=args.limit_pages).run()
