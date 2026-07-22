from woocommerce_spider import WooCommerceAPISpider

class JaicobooksInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Jaico Publishing House / Jaico Books (India) – major Indian publisher and bookseller.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="JaicoBooks_IN",
            base_url="https://www.jaicobooks.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Jaico Books India spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    JaicobooksInSpider(limit_pages=args.limit_pages).run()
