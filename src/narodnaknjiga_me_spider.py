from woocommerce_spider import WooCommerceAPISpider

class NarodnaknjigaMeSpider(WooCommerceAPISpider):
    """
    Broad crawler for Narodna Knjiga (Montenegro) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Narodna Knjiga",
            base_url="https://narodna-knjiga.com",
            territory="Montenegro",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    NarodnaknjigaMeSpider(limit_pages=args.limit_pages).run()
