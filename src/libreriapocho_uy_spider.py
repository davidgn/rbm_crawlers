from shopify_search_spider import ShopifySearchSpider

class LibreriapochoUySpider(ShopifySearchSpider):
    """
    Broad crawler for Librería Pocho (Uruguay) using Shopify Suggest API.
    Prices are in Uruguayan Pesos (UYU).
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Libreria Pocho",
            base_url="https://libreriapocho.com.uy",
            territory="Uruguay",
            price_currency="UYU",
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    LibreriapochoUySpider(limit_items=args.limit_items).run()
