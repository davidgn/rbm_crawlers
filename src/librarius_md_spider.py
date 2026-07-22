from woocommerce_spider import WooCommerceAPISpider

class LibrariusMdSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librarius (Moldova) – largest bookstore chain in Moldova.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librarius_MD",
            base_url="https://librarius.md",
            territory="Moldova",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Librarius Moldova bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibrariusMdSpider(limit_pages=args.limit_pages).run()
