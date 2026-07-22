from woocommerce_spider import WooCommerceAPISpider

class MartinsFontesBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Martins Fontes Paulista (Brazil) – premier Brazilian academic
    and trade bookstore running WooCommerce API.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MartinsFontes_BR",
            base_url="https://www.martinsfontespaulista.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Martins Fontes Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    MartinsFontesBrSpider(limit_pages=args.limit_pages).run()
