from shopify_search_spider import ShopifySearchSpider

class TecnicienciaVeSpider(ShopifySearchSpider):
    """
    Broad crawler for Tecni-Ciencia Libros (Venezuela) using Shopify API.
    Prices are in USD.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Tecni-Ciencia Libros",
            base_url="https://tecniciencia.com",
            territory="Venezuela",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    TecnicienciaVeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
