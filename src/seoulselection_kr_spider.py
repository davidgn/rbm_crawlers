from woocommerce_spider import WooCommerceAPISpider

class SeoulselectionKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Seoul Selection (South Korea) – premier bookstore for English books on Korea.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SeoulSelection_KR",
            base_url="https://www.seoulselection.com",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Seoul Selection South Korea spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SeoulselectionKrSpider(limit_pages=args.limit_pages).run()
