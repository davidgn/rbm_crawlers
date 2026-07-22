from woocommerce_spider import WooCommerceAPISpider

class MozaikHrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Mozaik Knjiga (Croatia) – prominent Croatian publishing house and bookstore chain.
    Croatia: $44.50 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mozaik_HR",
            base_url="https://mozaik-knjiga.hr",
            territory="Croatia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Mozaik Knjiga Croatia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MozaikHrSpider(limit_pages=args.limit_pages).run()
