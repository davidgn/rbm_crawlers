from woocommerce_spider import WooCommerceAPISpider

class LinardiUySpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Linardi y Risso (Uruguay) – renowned Montevideo antiquarian
    and academic bookstore specializing in Latin Americana.
    Uruguay: $88.12 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Linardi_UY",
            base_url="https://linardiyrisso.com.uy",
            territory="Uruguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Linardi y Risso Uruguay bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LinardiUySpider(limit_pages=args.limit_pages).run()
