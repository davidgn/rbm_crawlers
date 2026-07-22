from woocommerce_spider import WooCommerceAPISpider

class GerekliseylerTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Gerekli Şeyler (Turkey) – major Turkish graphic novel and specialty bookstore.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GerekliSeyler_TR",
            base_url="https://www.gerekliseyler.com.tr",
            territory="Türkiye",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Gerekli Seyler Turkey bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    GerekliseylerTrSpider(limit_pages=args.limit_pages).run()
