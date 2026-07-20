from woocommerce_spider import WooCommerceAPISpider

class MundokaypachaEcSpider(WooCommerceAPISpider):
    """
    Broad crawler for Mundo Kaypacha (Ecuador) using WooCommerce API.
    Prices are in US Dollars (USD).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mundo Kaypacha",
            base_url="https://mundokaypacha.com",
            territory="Ecuador",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    MundokaypachaEcSpider(limit_pages=args.limit_pages).run()
