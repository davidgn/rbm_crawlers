from woocommerce_spider import WooCommerceAPISpider

class LibreriaAlemanaCLSpider(WooCommerceAPISpider):
    """Broad crawler for Librería Alemana (CL) (Chile)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Alemana (CL)",
            base_url="https://libreriaalemana.cl",
            territory="Chile",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    LibreriaAlemanaCLSpider(limit_pages=args.limit_pages).run()
