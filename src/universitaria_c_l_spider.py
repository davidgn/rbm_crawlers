from woocommerce_spider import WooCommerceAPISpider

class UniversitariaCLSpider(WooCommerceAPISpider):
    """Broad crawler for Universitaria (CL) (Chile)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Universitaria (CL)",
            base_url="https://www.universitaria.cl",
            territory="Chile",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    UniversitariaCLSpider(limit_pages=args.limit_pages).run()
