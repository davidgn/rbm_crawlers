from woocommerce_spider import WooCommerceAPISpider

class ChinarKitabiAzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Chinar Kitabi (Azerbaijan) – a leading Azerbaijani
    online bookshop running WooCommerce.
    Azerbaijan: $71.81 / 10 kg M-Bag to the US (SAL/Economy, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="ChinarKitabi_AZ",
            base_url="https://chinarkitabi.az",
            territory="Azerbaijan",
            limit_pages=limit_pages, limit_items=limit_items,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Chinar Kitabi Azerbaijan spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    ChinarKitabiAzSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
