from woocommerce_spider import WooCommerceAPISpider

class SietelegasCrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Siete Leguas (Costa Rica) – Costa Rican independent bookstore using WooCommerce.
    Costa Rica: $35.04 / 10 kg M-Bag to the US (Non-Priority Surface, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SieteLeguas_CR",
            base_url="https://sieteleguas.cr",
            territory="Costa Rica",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Siete Leguas Costa Rica bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SietelegasCrSpider(limit_pages=args.limit_pages).run()
