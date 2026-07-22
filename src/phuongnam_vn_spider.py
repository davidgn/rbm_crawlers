from woocommerce_spider import WooCommerceAPISpider

class PhuongnamVnSpider(WooCommerceAPISpider):
    """
    Broad crawler for Phương Nam Bookstores (Vietnam) – major Vietnamese online book retailer.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PhuongNam_VN",
            base_url="https://nhasachphuongnam.com",
            territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Phuong Nam Vietnam bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    PhuongnamVnSpider(limit_pages=args.limit_pages).run()
