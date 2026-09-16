from woocommerce_spider import WooCommerceAPISpider

class LosAmigosDelLibroBoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Editorial Los Amigos del Libro (Bolivia) – historic Bolivian publisher
    and bookstore chain, using WooCommerce API.
    Bolivia: $85.49 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="LosAmigosDelLibro_BO",
            base_url="https://losamigosdellibro.com.bo",
            territory="Bolivia (Plurinational State of)",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Los Amigos del Libro Bolivia spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    LosAmigosDelLibroBoSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
