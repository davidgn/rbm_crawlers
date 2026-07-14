from shopify_search_spider import ShopifySearchSpider

class LibronomiaVeSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Libronomia (Venezuela).
    Uses the native suggest.json API.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Libronomia",
            base_url="https://libronomia.com",
            territory="Venezuela",
            price_currency="USD",
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Libronomia Venezuela Shopify Spider")
    parser.add_argument("--query", type=str, default="novela")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    
    spider = LibronomiaVeSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
