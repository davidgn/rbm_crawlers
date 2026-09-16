from woocommerce_spider import WooCommerceAPISpider

class SankiBfSpider(WooCommerceAPISpider):
    """
    Broad crawler for Editions Sankofa & Gurli (Burkina Faso) – Ouagadougou bookstore
    and academic press running WooCommerce API.
    Burkina Faso: $88.64 / 10 kg M-Bag to the US (Priority Air, 30 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Sanki_BF",
            base_url="https://editions-sankofa.bf",
            territory="Burkina Faso",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Sankofa Burkina Faso bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    SankiBfSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
