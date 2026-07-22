from woocommerce_spider import WooCommerceAPISpider

class PanmunKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Panmun Education (South Korea) – major South Korean medical and academic bookseller.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Panmun_KR",
            base_url="http://www.panmun.co.kr",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Panmun South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    PanmunKrSpider(limit_pages=args.limit_pages).run()
