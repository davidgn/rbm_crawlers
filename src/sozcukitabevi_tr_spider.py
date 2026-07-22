from woocommerce_spider import WooCommerceAPISpider

class SozcukitabeviTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Sözcü Kitabevi (Turkey) – major Turkish online bookstore using WooCommerce API.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SozcuKitabevi_TR",
            base_url="https://www.sozcukitabevi.com",
            territory="Türkiye",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Sozcu Kitabevi Turkey bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SozcukitabeviTrSpider(limit_pages=args.limit_pages).run()
