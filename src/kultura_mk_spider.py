from woocommerce_spider import WooCommerceAPISpider

class KulturaMkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Kultura (North Macedonia) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kultura",
            base_url="https://kultura.com.mk",
            territory="North Macedonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    KulturaMkSpider(limit_pages=args.limit_pages).run()
