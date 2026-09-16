from woocommerce_spider import WooCommerceAPISpider

class AlterabooksXkSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Altera Books (alterabooks.com) —
    one of Kosovo's largest bookstores and publishers in Pristina (6,540+ titles in EUR).
    Kosovo outbound M-Bag: RG5 low cost origin ($28.86 USD / 30 kg).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Altera Books",
            base_url="https://alterabooks.com",
            territory="Kosovo",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Altera Books Kosovo spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    AlterabooksXkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
