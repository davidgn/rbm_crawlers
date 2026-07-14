from woocommerce_spider import WooCommerceAPISpider

class MaticaMkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Matica Makedonska (North Macedonia) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Matica Makedonska",
            base_url="https://matica.com.mk",
            territory="North Macedonia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    MaticaMkSpider(limit_pages=args.limit_pages).run()
