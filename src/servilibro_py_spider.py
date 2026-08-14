from woocommerce_spider import WooCommerceAPISpider

class ServilibroPySpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Servilibro (servilibro.com.py) —
    one of Paraguay's most prominent publishing houses and bookstores in Asunción (1,420+ titles in PYG).
    Paraguay outbound M-Bag: low cost origin ($39.92 / 30 kg).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Servilibro Paraguay",
            base_url="https://www.servilibro.com.py",
            territory="Paraguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Servilibro Paraguay spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ServilibroPySpider(limit_pages=args.limit_pages).run()
