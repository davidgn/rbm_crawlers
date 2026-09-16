from woocommerce_spider import WooCommerceAPISpider

class LiteraturaMkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Literatura.mk (North Macedonia) – largest bookstore network in North Macedonia.
    North Macedonia: $31.27 / 10 kg M-Bag to the US (SAL/Economy, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Literatura_MK",
            base_url="https://literatura.mk",
            territory="North Macedonia",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Literatura.mk North Macedonia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LiteraturaMkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
