from woocommerce_spider import WooCommerceAPISpider

class LivrariaCulturaBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Livraria Cultura (Brazil) – historic Brazilian bookstore retailer.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LivrariaCultura_BR",
            base_url="https://www.livrariacultura.com.br",
            territory="Brazil",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Livraria Cultura Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LivrariaCulturaBrSpider(limit_pages=args.limit_pages).run()
