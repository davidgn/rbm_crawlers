from woocommerce_spider import WooCommerceAPISpider

class VbzHrSpider(WooCommerceAPISpider):
    """
    Broad crawler for V.B.Z. Knjižara (Croatia) using WooCommerce API.
    Prices are in EUR.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="V.B.Z. Knjizara",
            base_url="https://www.vbz.hr",
            territory="Croatia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    VbzHrSpider(limit_pages=args.limit_pages).run()
