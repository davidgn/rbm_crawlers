from woocommerce_spider import WooCommerceAPISpider

class BooknookStoreSpider(WooCommerceAPISpider):
    """
    Broad crawler for Booknook.store (Ghana).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Booknook.store",
            base_url="https://booknook.store",
            territory="Ghana",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    BooknookStoreSpider(limit_pages=args.limit_pages).run()
