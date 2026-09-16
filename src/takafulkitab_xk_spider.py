from woocommerce_spider import WooCommerceAPISpider

class TakafulKitabXkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Takaful Kitab (Kosovo) – a WooCommerce-based independent
    bookstore serving the Albanian-language Kosovo reading market.
    Kosovo: $46.18 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="TakafulKitab_XK",
            base_url="https://takafulkitab.com",
            territory="Kosovo, Republic of",
            limit_pages=limit_pages, limit_items=limit_items,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Takaful Kitab Kosovo spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    TakafulKitabXkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
