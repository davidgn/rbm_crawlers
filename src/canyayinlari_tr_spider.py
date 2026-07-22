from woocommerce_spider import WooCommerceAPISpider

class CanyayinlariTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Can Yayınları (Turkey) – major Turkish literary publishing house and online bookstore.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CanYayinlari_TR",
            base_url="https://www.canyayinlari.com",
            territory="Türkiye",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Can Yayinlari Turkey bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    CanyayinlariTrSpider(limit_pages=args.limit_pages).run()
