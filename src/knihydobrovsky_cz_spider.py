from woocommerce_spider import WooCommerceAPISpider

class KnihydobrovskyCzSpider(WooCommerceAPISpider):
    """
    Broad crawler for Knihy Dobrovský (Czechia) – major Czech bookstore chain.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="KnihyDobrovsky_CZ",
            base_url="https://www.knihydobrovsky.cz",
            territory="Czech Republic",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Knihy Dobrovsky Czechia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    KnihydobrovskyCzSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
