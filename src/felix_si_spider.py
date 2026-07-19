from woocommerce_spider import WooCommerceAPISpider

class FelixSiSpider(WooCommerceAPISpider):
    """
    Broad crawler for Felix (Slovenia) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Felix",
            base_url="https://www.felix.si",
            territory="Slovenia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    FelixSiSpider(limit_pages=args.limit_pages).run()
