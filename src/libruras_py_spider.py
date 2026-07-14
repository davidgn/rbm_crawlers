from woocommerce_spider import WooCommerceAPISpider

class LibrurasPySpider(WooCommerceAPISpider):
    """
    Broad crawler for Libruras (Paraguay) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Libruras",
            base_url="https://libruras.com.py",
            territory="Paraguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    LibrurasPySpider(limit_pages=args.limit_pages).run()
