from woocommerce_spider import WooCommerceAPISpider

class OrientblackswanInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Orient BlackSwan (India) – premier Indian academic publisher and distributor.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="OrientBlackSwan_IN",
            base_url="https://www.orientblackswan.com",
            territory="India",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Orient BlackSwan India spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    OrientblackswanInSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
