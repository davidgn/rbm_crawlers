from woocommerce_spider import WooCommerceAPISpider

class SaraybosnaBooksBaSpider(WooCommerceAPISpider):
    """
    Broad crawler for Saraybosna Books (Bosnia and Herzegovina) – Bosnian literary publisher and online bookstore.
    Bosnia: $42.51 / 10 kg M-Bag to the US (Surface, 30 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SaraybosnaBooks_BA",
            base_url="https://saraybosnabooks.com",
            territory="Bosnia and Herzegovina",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Saraybosna Books Bosnia spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SaraybosnaBooksBaSpider(limit_pages=args.limit_pages).run()
