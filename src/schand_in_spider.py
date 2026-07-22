from woocommerce_spider import WooCommerceAPISpider

class SchandInSpider(WooCommerceAPISpider):
    """
    Broad crawler for S. Chand Publishing (India) – iconic Indian academic and educational book publisher.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SChand_IN",
            base_url="https://www.schandpublishing.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="S. Chand India bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SchandInSpider(limit_pages=args.limit_pages).run()
