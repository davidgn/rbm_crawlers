from woocommerce_spider import WooCommerceAPISpider

class KyoboBookKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Kyobo Book Centre (South Korea) – Korea's largest bookstore chain.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="KyoboBook_KR",
            base_url="https://www.kyobobook.co.kr",
            territory="Republic of Korea",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Kyobo Book South Korea spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    KyoboBookKrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
