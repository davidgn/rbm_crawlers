from woocommerce_spider import WooCommerceAPISpider

class CuspideARSpider(WooCommerceAPISpider):
    """Broad crawler for Cúspide (AR) (Argentina)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Cúspide (AR)",
            base_url="https://cuspide.com",
            territory="Argentina",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    CuspideARSpider(limit_pages=args.limit_pages).run()
