from woocommerce_spider import WooCommerceAPISpider

class GababooksPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Gaba Educational Books (Pakistan) – major Pakistani educational bookseller.
    Pakistan: $7.92 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="GabaBooks_PK",
            base_url="https://gababooks.com",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Gaba Books Pakistan spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    GababooksPkSpider(limit_pages=args.limit_pages).run()
