from woocommerce_spider import WooCommerceAPISpider

class CartierMdSpider(WooCommerceAPISpider):
    """
    Broad crawler for Editura Cartier (Moldova) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Cartier",
            base_url="https://cartier.md",
            territory="Moldova",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    CartierMdSpider(limit_pages=args.limit_pages).run()
