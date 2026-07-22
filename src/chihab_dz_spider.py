from woocommerce_spider import WooCommerceAPISpider

class ChihabDzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Chihab Éditions (Algeria) – major Algerian academic publisher
    and bookstore using WooCommerce API.
    Algeria: $22.61 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Chihab_DZ",
            base_url="https://chihab.com",
            territory="Algeria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Chihab Editions Algeria spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ChihabDzSpider(limit_pages=args.limit_pages).run()
