from woocommerce_spider import WooCommerceAPISpider

class LibreriaslecturaBoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librerías Lectura (Bolivia) using WooCommerce API.
    Prices are in Bolivian Bolivianos (BOB).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librerías Lectura",
            base_url="https://libreriaslectura.com",
            territory="Bolivia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    LibreriaslecturaBoSpider(limit_pages=args.limit_pages).run()
