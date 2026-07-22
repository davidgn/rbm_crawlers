import argparse
from vitalsource_search_spider import VitalSourceSearchSpider

class SuccessVitalsourceCampusStoreSpider(VitalSourceSearchSpider):
    """Direct search spider for Success VitalSource Campus Store (VitalSource platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Success VitalSource Campus Store",
            subdomain="success",
            territory="United States",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Success VitalSource Campus Store VitalSource Spider")
    parser.add_argument("--query", type=str, default="potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = SuccessVitalsourceCampusStoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
