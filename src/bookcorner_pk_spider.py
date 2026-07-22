from woocommerce_spider import WooCommerceAPISpider

class BookcornerPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Book Corner Jhelum (Pakistan) – historic Pakistani publisher and bookstore.
    Pakistan: $7.92 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BookCorner_PK",
            base_url="https://bookcorner.pk",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Book Corner Pakistan bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    BookcornerPkSpider(limit_pages=args.limit_pages).run()
