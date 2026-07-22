from woocommerce_spider import WooCommerceAPISpider

class LibrerialibroscuCuSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Libros (Cuba) – Cuban state bookstore network via WooCommerce API.
    Cuba: $33.80 / 10 kg M-Bag to the US (Priority Air, 30 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LibreriaLibros_CU",
            base_url="https://libreriavirtualcuba.com",
            territory="Cuba",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Libreria Virtual Cuba bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibrerialibroscuCuSpider(limit_pages=args.limit_pages).run()
