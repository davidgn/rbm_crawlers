from woocommerce_spider import WooCommerceAPISpider

class AngolivrosSpider(WooCommerceAPISpider):
    """
    Broad crawler for Angolivros (Angola) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Angolivros",
            base_url="https://angolivros.ao",
            territory="Angola",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    AngolivrosSpider(limit_pages=args.limit_pages).run()
