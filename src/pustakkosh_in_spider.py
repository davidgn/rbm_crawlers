from woocommerce_spider import WooCommerceAPISpider

class PustakkoshInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Pustak Kosh (India) – major Indian textbook and academic book rental/retailer.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PustakKosh_IN",
            base_url="https://www.pustakkosh.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Pustak Kosh India bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    PustakkoshInSpider(limit_pages=args.limit_pages).run()
