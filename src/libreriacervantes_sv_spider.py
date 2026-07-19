from woocommerce_spider import WooCommerceAPISpider

class LibreriacervantesSvSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Cervantes (El Salvador) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Cervantes",
            base_url="https://libreriacervantes.com.sv",
            territory="El Salvador",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    LibreriacervantesSvSpider(limit_pages=args.limit_pages).run()
