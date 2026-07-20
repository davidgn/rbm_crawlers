from woocommerce_spider import WooCommerceAPISpider

class MybookstallInSpider(WooCommerceAPISpider):
    """
    Broad crawler for MyBookStall (India) using WooCommerce API.
    Prices are in INR.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MyBookStall",
            base_url="https://www.mybookstall.com",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    MybookstallInSpider(limit_pages=args.limit_pages).run()
