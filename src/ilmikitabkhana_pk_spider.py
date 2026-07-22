from woocommerce_spider import WooCommerceAPISpider

class IlmikitabkhanaPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Ilmi Kitab Khana (Pakistan) – historic Pakistani academic publisher and bookstore.
    Pakistan: $7.92 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="IlmiKitabKhana_PK",
            base_url="https://ilmikitabkhana.com",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Ilmi Kitab Khana Pakistan spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    IlmikitabkhanaPkSpider(limit_pages=args.limit_pages).run()
