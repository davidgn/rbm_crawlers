from woocommerce_spider import WooCommerceAPISpider

class PuroversoUySpider(WooCommerceAPISpider):
    """
    Broad crawler for Puro Verso (Uruguay) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Puro Verso",
            base_url="https://puroverso.uy",
            territory="Uruguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    PuroversoUySpider(limit_pages=args.limit_pages).run()
