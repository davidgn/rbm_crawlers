from shopify_search_spider import ShopifySearchSpider

class PashoshimIlSpider(ShopifySearchSpider):
    """
    Broad crawler for Pashoshim (Israel) using Shopify API.
    Prices are in New Israeli Shekels (ILS).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Pashoshim",
            base_url="https://pashoshim.com",
            territory="Israel",
            price_currency="ILS",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    PashoshimIlSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
