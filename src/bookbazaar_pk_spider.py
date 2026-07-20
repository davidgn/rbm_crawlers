from woocommerce_spider import WooCommerceAPISpider

class BookbazaarPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Book Bazaar (Pakistan) using WooCommerce API.
    Prices are in PKR.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Book Bazaar Pakistan",
            base_url="https://bookbazaar.pk",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    BookbazaarPkSpider(limit_pages=args.limit_pages).run()
