import argparse
from shopify_search_spider import ShopifySearchSpider

class UniversityOfWaterlooCampusStoreSpider(ShopifySearchSpider):
    """Direct search spider for University of Waterloo Campus Store (Shopify platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="University of Waterloo Campus Store",
            base_url="https://wstore.uwaterloo.ca",
            territory="Canada",
            price_currency="CAD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="University of Waterloo Campus Store Spider")
    parser.add_argument("--query", type=str, default="potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = UniversityOfWaterlooCampusStoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
