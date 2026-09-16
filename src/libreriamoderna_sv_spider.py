from woocommerce_spider import WooCommerceAPISpider

class LibreriaModernaSvSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Moderna (El Salvador) using WooCommerce API.
    Prices are in US Dollars (USD).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Librería Moderna",
            base_url="https://libreriamoderna.com.sv",
            territory="El Salvador",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()

    LibreriaModernaSvSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
