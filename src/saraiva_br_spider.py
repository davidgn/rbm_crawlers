from woocommerce_spider import WooCommerceAPISpider

class SaraivaBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livraria Saraiva (Brazil) – major Brazilian online book retailer.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Saraiva_BR",
            base_url="https://www.saraiva.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Saraiva Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SaraivaBrSpider(limit_pages=args.limit_pages).run()
