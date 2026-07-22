from woocommerce_spider import WooCommerceAPISpider

class LagunaRsSpider(WooCommerceAPISpider):
    """
    Broad crawler for Laguna (Serbia) – Serbia's largest trade publisher and online bookstore.
    Serbia: $61.23 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Laguna_RS",
            base_url="https://www.laguna.rs",
            territory="Serbia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Laguna Serbia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LagunaRsSpider(limit_pages=args.limit_pages).run()
