from woocommerce_spider import WooCommerceAPISpider

class GalaxybookshopCySpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Galaxy Bookshop (galaxybookshop.com.cy) —
    prominent academic and law bookstore in Nicosia, Cyprus (3,800+ titles in EUR).
    Cyprus outbound M-Bag origin.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Galaxy Bookshop",
            base_url="https://galaxybookshop.com.cy",
            territory="Cyprus",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Galaxy Bookshop Cyprus spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    GalaxybookshopCySpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
