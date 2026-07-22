from woocommerce_spider import WooCommerceAPISpider

class AlManarEgSpider(WooCommerceAPISpider):
    """
    Broad crawler for Al Manar Bookshop & Publishing (Egypt) – major Cairo book distributor.
    Egypt: $64.05 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AlManar_EG",
            base_url="https://almanarbooks.com",
            territory="Egypt",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Al Manar Egypt bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    AlManarEgSpider(limit_pages=args.limit_pages).run()
