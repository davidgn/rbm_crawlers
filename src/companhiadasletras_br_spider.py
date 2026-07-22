from woocommerce_spider import WooCommerceAPISpider

class CompanhiadasletrasBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Companhia das Letras (Brazil) – premier Brazilian literary publishing house and online store.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CompanhiaDasLetras_BR",
            base_url="https://www.companhiadasletras.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Companhia das Letras Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    CompanhiadasletrasBrSpider(limit_pages=args.limit_pages).run()
