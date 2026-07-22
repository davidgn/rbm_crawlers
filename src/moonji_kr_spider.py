from woocommerce_spider import WooCommerceAPISpider

class MoonjiKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Moonji Publishing & Books (South Korea) – historic Korean literary publisher and bookstore.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Moonji_KR",
            base_url="http://moonji.com",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Moonji South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MoonjiKrSpider(limit_pages=args.limit_pages).run()
