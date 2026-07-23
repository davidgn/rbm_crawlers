from woocommerce_spider import WooCommerceAPISpider

class BookpointAfSpider(WooCommerceAPISpider):
    """
    Broad crawler for Bookpoint (Afghanistan) using WooCommerce REST API.
    Prices are in Afghan Afghanis (AFN) or USD (via switcher).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Bookpoint",
            base_url="https://bookpoint.af",
            territory="Afghanistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    BookpointAfSpider(limit_pages=args.limit_pages).run()
