from woocommerce_spider import WooCommerceAPISpider

class BookswagonInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Bookswagon (India) – major Indian online bookstore using WooCommerce API.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookswagon_IN",
            base_url="https://www.bookswagon.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Bookswagon India bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    BookswagonInSpider(limit_pages=args.limit_pages).run()
