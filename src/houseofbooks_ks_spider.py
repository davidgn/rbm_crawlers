from woocommerce_spider import WooCommerceAPISpider

class HouseOfBooksKsSpider(WooCommerceAPISpider):
    """
    Broad crawler for House of Books (Kosovo) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="House of Books",
            base_url="https://houseofbooks-ks.com",
            territory="Kosovo",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    HouseOfBooksKsSpider(limit_pages=args.limit_pages).run()
