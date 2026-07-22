from woocommerce_spider import WooCommerceAPISpider

class NajaNileTzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Naja-Nile Books (Tanzania) – an online bookstore
    serving the East Africa English-language reading market, powered by WooCommerce.
    Tanzania: $103.25 / 10 kg M-Bag to the US (Priority Air, ~30 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="NajaNile_TZ",
            base_url="https://najanilebooks.co.tz",
            territory="United Republic of Tanzania",
            limit_pages=limit_pages,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Naja-Nile Books Tanzania spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    NajaNileTzSpider(limit_pages=args.limit_pages).run()
