from woocommerce_spider import WooCommerceAPISpider

class LibreriaShirakabaCOSpider(WooCommerceAPISpider):
    """Broad crawler for Librería Shirakaba (CO) (Colombia)."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Librería Shirakaba (CO)",
            base_url="https://libreriashirakaba.com",
            territory="Colombia",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    
    LibreriaShirakabaCOSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
