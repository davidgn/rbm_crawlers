import argparse
from shopify_search_spider import ShopifySearchSpider


class ImperialCollegeUnionSpider(ShopifySearchSpider):
    """Direct JSON API-based spider for Imperial College Union (Shopify platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Imperial College Union",
            base_url="https://shopimperial.org",
            territory="United Kingdom",
            price_currency="GBP",
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Imperial College Union Shopify Spider")
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = ImperialCollegeUnionSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
