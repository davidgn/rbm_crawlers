from woocommerce_spider import WooCommerceAPISpider

class YpbooksKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Youngpoong Book Store (YP Books, South Korea) – historic South Korean bookstore chain.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="YoungpoongBookStore_KR",
            base_url="http://www.ypbooks.co.kr",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Youngpoong Book Store South Korea spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    YpbooksKrSpider(limit_pages=args.limit_pages).run()
