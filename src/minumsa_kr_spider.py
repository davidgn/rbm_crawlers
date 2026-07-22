from woocommerce_spider import WooCommerceAPISpider

class MinumsaKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Minumsa Publishing & Books (South Korea) – historic South Korean literature publisher and bookseller.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Minumsa_KR",
            base_url="http://minumsa.com",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Minumsa South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MinumsaKrSpider(limit_pages=args.limit_pages).run()
