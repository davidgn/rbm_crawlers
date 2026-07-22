from woocommerce_spider import WooCommerceAPISpider

class LivrariaDaVilaBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livraria da Vila (Brazil) – major Brazilian independent bookstore chain.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LivrariaDaVila_BR",
            base_url="https://www.livrariadavila.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Livraria da Vila Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LivrariaDaVilaBrSpider(limit_pages=args.limit_pages).run()
