from woocommerce_spider import WooCommerceAPISpider

class AtlanticbooksInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Atlantic Books & Publishers (India) – major Indian academic book publisher and retailer.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AtlanticBooks_IN",
            base_url="https://atlanticbooks.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Atlantic Books India spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    AtlanticbooksInSpider(limit_pages=args.limit_pages).run()
