from woocommerce_spider import WooCommerceAPISpider

class LibreriaCuestaDoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Librería Cuesta (Dominican Republic) – major Dominican bookstore chain.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="LibreriaCuesta_DO",
            base_url="https://libreriacuesta.com",
            territory="Dominican Republic",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Libreria Cuesta Dominican Republic spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LibreriaCuestaDoSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
