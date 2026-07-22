from woocommerce_spider import WooCommerceAPISpider

class DisallivrariaBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Disal Livraria (Brazil) – premier Brazilian distributor of educational and language literature.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="DisalLivraria_BR",
            base_url="https://www.disal.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Disal Livraria Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    DisallivrariaBrSpider(limit_pages=args.limit_pages).run()
