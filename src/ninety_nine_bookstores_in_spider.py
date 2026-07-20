from shopify_search_spider import ShopifySearchSpider

class NinetyNineBookstoresInSpider(ShopifySearchSpider):
    """
    Broad crawler for 99Bookstores (India) using Shopify Suggest API.
    Prices are in INR.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="99Bookstores",
            base_url="https://99bookstores.com",
            territory="India",
            price_currency="INR",
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

    NinetyNineBookstoresInSpider(limit_items=args.limit_items).run(search_term=args.query)
