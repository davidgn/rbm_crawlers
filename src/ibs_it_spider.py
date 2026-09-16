from woocommerce_spider import WooCommerceAPISpider

class IbsItSpider(WooCommerceAPISpider):
    """
    Broad crawler for IBS (Internet Bookshop Italia) – leading Italian online bookstore.
    Italy: $24.66 / 10 kg M-Bag to the US (SAL/Economy, 20 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="IBS_IT",
            base_url="https://www.ibs.it",
            territory="Italy",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="IBS Italy bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    IbsItSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
