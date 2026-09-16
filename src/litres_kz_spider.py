from woocommerce_spider import WooCommerceAPISpider

class LitresKzSpider(WooCommerceAPISpider):
    """
    Broad crawler for LitRes.kz (Kazakhstan) – leading Kazakh e-book and print-on-demand book platform.
    Kazakhstan: $66.93 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="LitRes_KZ",
            base_url="https://www.litres.kz",
            territory="Kazakhstan",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="LitRes Kazakhstan bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LitresKzSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
