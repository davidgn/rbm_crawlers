from woocommerce_spider import WooCommerceAPISpider

class AbaiKzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Abai Books (Kazakhstan) – Kazakh academic and general bookstore.
    Kazakhstan: $66.93 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Abai_KZ",
            base_url="https://abaibooks.kz",
            territory="Kazakhstan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Abai Books Kazakhstan spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    AbaiKzSpider(limit_pages=args.limit_pages).run()
