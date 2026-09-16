from woocommerce_spider import WooCommerceAPISpider

class LivrariaLoyolaBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livraria Loyola (Brazil) – major Brazilian academic and trade bookstore network.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="LivrariaLoyola_BR",
            base_url="https://www.livrarialoyola.com.br",
            territory="Brazil",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Livraria Loyola Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LivrariaLoyolaBrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
