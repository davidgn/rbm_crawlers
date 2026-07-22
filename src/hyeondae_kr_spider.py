from woocommerce_spider import WooCommerceAPISpider

class HyeondaeKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Hyeondae Munhak Books (South Korea) – historic South Korean literary publisher and bookstore.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Hyeondae_KR",
            base_url="http://hyeondae.com",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Hyeondae South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    HyeondaeKrSpider(limit_pages=args.limit_pages).run()
