from woocommerce_spider import WooCommerceAPISpider

class MlbdInSpider(WooCommerceAPISpider):
    """
    Broad crawler for Motilal Banarsidass Publishers (MLBD, India) – premier Indian Indology and Sanskrit publisher.
    India: $15.17 / 10 kg M-Bag to the US (Surface, 60 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MLBD_IN",
            base_url="https://www.mlbd.in",
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Motilal Banarsidass India spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MlbdInSpider(limit_pages=args.limit_pages).run()
