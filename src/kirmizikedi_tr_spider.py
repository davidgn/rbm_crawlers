from woocommerce_spider import WooCommerceAPISpider

class KirmiziKediTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Kırmızı Kedi Kitabevi (Turkey) – major Turkish bookstore chain and publisher.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="KirmiziKedi_TR",
            base_url="https://www.kirmizikedi.com",
            territory="Türkiye",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Kirmizi Kedi Turkey bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    KirmiziKediTrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
