from woocommerce_spider import WooCommerceAPISpider

class RemziTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Remzi Kitabevi (Turkey) – historic Turkish publishing house and bookstore chain.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Remzi_TR",
            base_url="https://www.remzi.com.tr",
            territory="Türkiye",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Remzi Kitabevi Turkey spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    RemziTrSpider(limit_pages=args.limit_pages).run()
