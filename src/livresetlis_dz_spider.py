from woocommerce_spider import WooCommerceAPISpider

class LivresetlisDzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livres & Lis (Algeria) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LivresEtLis",
            base_url="https://livresetlis.net",
            territory="Algeria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    LivresetlisDzSpider(limit_pages=args.limit_pages).run()
