import argparse
from shopify_search_spider import ShopifySearchSpider


class OhioDominicanUniversityCampusStoreSpider(ShopifySearchSpider):
    """Direct JSON API-based spider for Ohio Dominican University Campus Store (Shopify platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Ohio Dominican University Campus Store",
            base_url="https://odugear.com",
            territory="United States",
            price_currency="USD",
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Ohio Dominican University Campus Store Shopify Spider")
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = OhioDominicanUniversityCampusStoreSpider(limit_items=args.limit_items)
    spider.run(search_term=args.query)
