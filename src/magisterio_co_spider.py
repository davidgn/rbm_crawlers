from woocommerce_spider import WooCommerceAPISpider

class MagisterioCoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Magisterio (Colombia).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Magisterio",
            base_url="https://www.magisterio.com.co",
            territory="Colombia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    MagisterioCoSpider(limit_pages=args.limit_pages).run()
