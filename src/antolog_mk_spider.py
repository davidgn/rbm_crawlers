from woocommerce_spider import WooCommerceAPISpider

class AntologMkSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Antolog Books (antolog.mk) —
    prominent bookstore chain and literary publishing house in Skopje, North Macedonia (1,030+ titles in MKD).
    North Macedonia outbound M-Bag: RG5 low cost origin.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Antolog Books",
            base_url="https://antolog.mk",
            territory="North Macedonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Antolog Books North Macedonia spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    AntologMkSpider(limit_pages=args.limit_pages).run()
