from woocommerce_spider import WooCommerceAPISpider

class FullyBookedPhSpider(WooCommerceAPISpider):
    """
    Broad crawler for Fully Booked (Philippines) – the country's premium
    independent bookstore chain with a WooCommerce-backed online store.
    Philippines: $73.61 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="FullyBooked_PH",
            base_url="https://www.fullybookedonline.com",
            territory="Philippines",
            limit_pages=limit_pages, limit_items=limit_items,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Fully Booked Philippines spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    FullyBookedPhSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
