from woocommerce_spider import WooCommerceAPISpider

class BandinlunisKrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Bandi & Luni's (South Korea) – major Korean online bookstore.
    Republic of Korea: $15.95 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BandiNLunis_KR",
            base_url="http://www.bandinlunis.com",
            territory="Republic of Korea",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Bandi & Luni's South Korea bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    BandinlunisKrSpider(limit_pages=args.limit_pages).run()
