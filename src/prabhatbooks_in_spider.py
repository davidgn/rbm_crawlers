from woocommerce_spider import WooCommerceAPISpider

class PrabhatbooksInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Prabhat Prakashan / Prabhat Books (India) – major Indian publisher and bookseller.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PrabhatBooks_IN",
            base_url="https://www.prabhatbooks.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Prabhat Books India spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    PrabhatbooksInSpider(limit_pages=args.limit_pages).run()
