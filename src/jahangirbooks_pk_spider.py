from woocommerce_spider import WooCommerceAPISpider

class JahangirbooksPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Jahangir Books / World Times (Pakistan) – major Pakistani educational bookseller.
    Pakistan: $7.92 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="JahangirBooks_PK",
            base_url="https://jahangirbooks.com",
            territory="Pakistan",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Jahangir Books Pakistan spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    JahangirbooksPkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
