from shopify_search_spider import ShopifySearchSpider

class KishibooksGtSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Kishi Books (Guatemala).
    Uses the native suggest.json API.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Kishi Books",
            base_url="https://kishibooksgt.com",
            territory="Guatemala",
            price_currency="GTQ",
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Kishi Books Guatemala Shopify Spider")
    parser.add_argument("--query", type=str, default="libro")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = KishibooksGtSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
