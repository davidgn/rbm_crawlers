from woocommerce_spider import WooCommerceAPISpider

class BooklakeMeSpider(WooCommerceAPISpider):
    """
    Broad crawler for Booklake Montenegro – a WooCommerce-based online bookstore
    serving Montenegro's reading market.
    Montenegro: $48.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Booklake_ME",
            base_url="https://booklake.me",
            territory="Montenegro",
            limit_pages=limit_pages, limit_items=limit_items,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Booklake Montenegro spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    BooklakeMeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
