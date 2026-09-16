from woocommerce_spider import WooCommerceAPISpider

class BookoceanPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Book Ocean (Pakistan) using WooCommerce API.
    Prices are in Pakistani Rupees (PKR).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Book Ocean Pakistan",
            base_url="https://bookocean.pk",
            territory="Pakistan",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()

    BookoceanPkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
