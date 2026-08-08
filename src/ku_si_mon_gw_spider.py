from woocommerce_spider import WooCommerceAPISpider

class KuSiMonGwSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Ku Si Mon Editora (Bissau, Guinea-Bissau).
    Founded in 1994, it is Guinea-Bissau's premier publisher of fiction,
    oral tradition, linguistics, and political history.
    Guinea-Bissau outbound M-Bag: $132.96 USD / 30 kg to US.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ku Si Mon Editora",
            base_url="https://www.kusimon.com",
            territory="Guinea-Bissau",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Ku Si Mon Editora Guinea-Bissau bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    KuSiMonGwSpider(limit_pages=args.limit_pages).run()
