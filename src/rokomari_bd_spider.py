from woocommerce_spider import WooCommerceAPISpider

class RokomariBdSpider(WooCommerceAPISpider):
    """
    Broad crawler for Rokomari (Bangladesh) bookstore platform.
    Bangladesh is a low-cost M-Bag origin country ($46.04 / 10 kg to US).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Rokomari_BD",
            base_url="https://www.rokomari.com",
            territory="Bangladesh",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    RokomariBdSpider(limit_pages=args.limit_pages).run()
