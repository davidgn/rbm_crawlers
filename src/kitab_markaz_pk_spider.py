from shopify_search_spider import ShopifySearchSpider

class KitabMarkazPkSpider(ShopifySearchSpider):
    """
    Broad crawler for Kitab Markaz (Pakistan) using Shopify Suggest API.
    Prices are in PKR.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Kitab Markaz",
            base_url="https://kitabmarkaz.shop",
            territory="Pakistan",
            price_currency="PKR",
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    KitabMarkazPkSpider(limit_items=args.limit_items).run(search_term=args.query)
