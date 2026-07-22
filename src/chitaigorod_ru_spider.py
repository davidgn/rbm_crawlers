from woocommerce_spider import WooCommerceAPISpider

class ChitaiGorodRuSpider(WooCommerceAPISpider):
    """
    Broad crawler for Chitai-Gorod (Russian Federation) – Russia's premier bookstore chain.
    Russian Federation: $31.30 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ChitaiGorod_RU",
            base_url="https://www.chitai-gorod.ru",
            territory="Russian Federation",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Chitai-Gorod Russia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ChitaiGorodRuSpider(limit_pages=args.limit_pages).run()
