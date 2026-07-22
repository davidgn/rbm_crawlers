from woocommerce_spider import WooCommerceAPISpider

class WookPtSpider(WooCommerceAPISpider):
    """
    Broad crawler for Wook.pt – Portugal's leading online bookstore
    (part of the Porto Editora group), running WooCommerce.
    Portugal: $96.99 / 10 kg M-Bag to the US (SAL/Economy, ~20 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wook_PT",
            base_url="https://www.wook.pt",
            territory="Portugal",
            limit_pages=limit_pages,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Wook.pt Portugal bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    WookPtSpider(limit_pages=args.limit_pages).run()
