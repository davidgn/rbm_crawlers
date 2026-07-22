from woocommerce_spider import WooCommerceAPISpider

class DarakwonKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Darakwon Books (South Korea) – premier Korean educational and language book publisher.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Darakwon_KR",
            base_url="https://www.darakwon.co.kr",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Darakwon South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    DarakwonKrSpider(limit_pages=args.limit_pages).run()
