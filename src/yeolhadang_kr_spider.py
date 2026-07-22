from woocommerce_spider import WooCommerceAPISpider

class YeolhadangKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Yeolhadang Publishers (South Korea) – historic South Korean art and architecture book publisher/store.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Yeolhadang_KR",
            base_url="http://yeolhadang.co.kr",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Yeolhadang South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    YeolhadangKrSpider(limit_pages=args.limit_pages).run()
