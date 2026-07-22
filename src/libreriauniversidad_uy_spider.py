from woocommerce_spider import WooCommerceAPISpider

class LibreriauniversidadUySpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Universidad (Uruguay) – Uruguayan academic and scientific bookstore.
    Uruguay: $88.12 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LibreriaUniversidad_UY",
            base_url="https://www.libreriauniversidad.com.uy",
            territory="Uruguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Libreria Universidad Uruguay spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibreriauniversidadUySpider(limit_pages=args.limit_pages).run()
