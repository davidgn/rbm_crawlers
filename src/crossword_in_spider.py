from woocommerce_spider import WooCommerceAPISpider

class CrosswordInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Crossword Bookstores (India) – premier Indian bookstore chain using WooCommerce API.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Crossword_IN",
            base_url="https://www.crossword.in",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Crossword India bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    CrosswordInSpider(limit_pages=args.limit_pages).run()
