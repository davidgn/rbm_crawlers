from woocommerce_spider import WooCommerceAPISpider

class KitabgharPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Kitab Ghar (Pakistan) – Pakistani online bookstore using WooCommerce API.
    Pakistan: $7.92 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="KitabGhar_PK",
            base_url="https://kitabghar.pk",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Kitab Ghar Pakistan bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    KitabgharPkSpider(limit_pages=args.limit_pages).run()
