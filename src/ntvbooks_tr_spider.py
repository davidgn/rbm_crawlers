from woocommerce_spider import WooCommerceAPISpider

class NtvbooksTrSpider(WooCommerceAPISpider):
    """
    Broad crawler for NTV Yayınları / Kitap (Turkey) – major Turkish non-fiction and cultural bookseller.
    Türkiye: $17.87 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="NTVBooks_TR",
            base_url="https://www.ntvyayinlari.com.tr",
            territory="Türkiye",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="NTV Books Turkey spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    NtvbooksTrSpider(limit_pages=args.limit_pages).run()
