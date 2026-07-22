from shopify_search_spider import ShopifySearchSpider

class KitabciAzSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Kitabci.az (Azerbaijan) – a popular Azerbaijani
    online bookstore using Shopify.
    Azerbaijan: $71.81 / 10 kg M-Bag to the US (SAL/Economy, 21 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Kitabci_AZ",
            base_url="https://kitabci.az",
            territory="Azerbaijan",
            price_currency="AZN",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Kitabci.az Azerbaijan Shopify Spider")
    parser.add_argument("--query", type=str, default="kitab")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    KitabciAzSpider(limit_items=args.limit_items).run(search_term=args.query)
