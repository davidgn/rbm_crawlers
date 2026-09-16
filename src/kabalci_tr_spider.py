from woocommerce_spider import WooCommerceAPISpider

class KabalciTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Kabalcı Kitabevi (Turkey) – major Istanbul academic bookstore and publisher.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Kabalci_TR",
            base_url="https://www.kabalci.com.tr",
            territory="Türkiye",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Kabalci Turkey bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    KabalciTrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
