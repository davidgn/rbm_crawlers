from woocommerce_spider import WooCommerceAPISpider

class VikaspublishingInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Vikas Publishing (India) – premier Indian academic and educational book publisher.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VikasPublishing_IN",
            base_url="https://www.vikaspublishing.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Vikas Publishing India bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    VikaspublishingInSpider(limit_pages=args.limit_pages).run()
