from woocommerce_spider import WooCommerceAPISpider

class LibreriaUniversidadChileClSpider(WooCommerceAPISpider):
    """
    Broad crawler for Editorial Universitaria (Chile) – the bookstore arm of
    the Universidad de Chile, one of South America's oldest academic publishers.
    Chile: $86.50 / 10 kg M-Bag to the US (Priority Air, 14 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="EditorialUniversitaria_CL",
            base_url="https://www.editorial.uchile.cl",
            territory="Chile",
            limit_pages=limit_pages, limit_items=limit_items,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Editorial Universitaria Chile spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LibreriaUniversidadChileClSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
