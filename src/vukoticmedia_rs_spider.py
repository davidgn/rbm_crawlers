from woocommerce_spider import WooCommerceAPISpider

class VukoticmediaRsSpider(WooCommerceAPISpider):
    """
    Broad crawler for Vukotić Media (Serbia) using WooCommerce API.
    Prices are in Serbian Dinars (RSD).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vukotic Media",
            base_url="https://vukoticmedia.rs",
            territory="Serbia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    VukoticmediaRsSpider(limit_pages=args.limit_pages).run()
