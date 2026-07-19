from shopify_search_spider import ShopifySearchSpider

class LivreserviceMaSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Livre Service (Morocco).
    Uses the native suggest.json API.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Livre Service",
            base_url="https://livreservice.com",
            territory="Morocco",
            price_currency="MAD",
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Livre Service Morocco Shopify Spider")
    parser.add_argument("--query", type=str, default="roman")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    
    spider = LivreserviceMaSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
