import argparse
from shopify_search_spider import ShopifySearchSpider


class UniversityOfWaterlooWStoreSpider(ShopifySearchSpider):
    """Direct JSON API-based spider for University of Waterloo W Store (Shopify platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="University of Waterloo W Store",
            base_url="https://wstore.uwaterloo.ca",
            territory="Canada",
            price_currency="CAD",
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="University of Waterloo W Store Shopify Spider")
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = UniversityOfWaterlooWStoreSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
