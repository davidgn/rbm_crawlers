from woocommerce_spider import WooCommerceAPISpider

class GodageLkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Godage International Publishing (Sri Lanka) using WooCommerce API.
    Prices are in Sri Lankan Rupees (LKR).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Godage Books",
            base_url="https://www.godage.com",
            territory="Sri Lanka",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    GodageLkSpider(limit_pages=args.limit_pages).run()
