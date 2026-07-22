from woocommerce_spider import WooCommerceAPISpider

class LibreriaInteruniversitariaCOSpider(WooCommerceAPISpider):
    """Broad crawler for Interuniversitaria (CO) (Colombia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Interuniversitaria (CO)",
            base_url="https://libreriainteruniversitaria.com",
            territory="Colombia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    LibreriaInteruniversitariaCOSpider(limit_pages=args.limit_pages).run()
