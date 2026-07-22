from woocommerce_spider import WooCommerceAPISpider

class BoksalaISSpider(WooCommerceAPISpider):
    """Broad crawler for Bóksala Stúdenta (IS) (IC)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bóksala Stúdenta (IS)",
            base_url="https://boksala.is",
            territory="IC",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    BoksalaISSpider(limit_pages=args.limit_pages).run()
