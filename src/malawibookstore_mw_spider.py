from woocommerce_spider import WooCommerceAPISpider

class MalawiBookstoreMwSpider(WooCommerceAPISpider):
    """
    Broad crawler for Malawi Bookstore – Malawi's dedicated online book retailer using WooCommerce.
    Malawi: $89.11 / 10 kg M-Bag to the US (Surface, ~60 days).
    Only classifieds spiders (malawiclassifieds, malondaplace) previously existed for Malawi.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MalawiBookstore_MW",
            base_url="https://malawibookstore.com",
            territory="Malawi",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Malawi Bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MalawiBookstoreMwSpider(limit_pages=args.limit_pages).run()
