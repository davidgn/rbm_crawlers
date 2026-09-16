from woocommerce_spider import WooCommerceAPISpider

class LeituraBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livraria Leitura (Brazil) – major Brazilian mega-store bookstore network.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="LivrariaLeitura_BR",
            base_url="https://www.leitura.com.br",
            territory="Brazil",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Livraria Leitura Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LeituraBrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
