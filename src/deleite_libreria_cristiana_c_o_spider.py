from woocommerce_spider import WooCommerceAPISpider

class DeleiteLibreriaCristianaCOSpider(WooCommerceAPISpider):
    """Broad crawler for Deleite Cristiana (CO) (Colombia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Deleite Cristiana (CO)",
            base_url="https://deleitelibreriacristiana.com",
            territory="Colombia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    DeleiteLibreriaCristianaCOSpider(limit_pages=args.limit_pages).run()
