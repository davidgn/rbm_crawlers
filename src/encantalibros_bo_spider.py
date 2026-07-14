from woocommerce_spider import WooCommerceAPISpider

class EncantalibrosBoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Encantalibros (Bolivia) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Encantalibros",
            base_url="https://encantalibros.com",
            territory="Bolivia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    EncantalibrosBoSpider(limit_pages=args.limit_pages).run()
