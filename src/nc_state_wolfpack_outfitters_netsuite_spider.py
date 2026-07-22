import argparse
from netsuite_search_spider import NetSuiteSearchSpider


class NcStateWolfpackOutfittersSpider(NetSuiteSearchSpider):
    """Direct API-based spider for NC State Wolfpack Outfitters (NetSuite platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="NC State Wolfpack Outfitters",
            base_url="https://shop.ncsu.edu",
            territory="United States",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="NC State Wolfpack Outfitters NetSuite Spider")
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = NcStateWolfpackOutfittersSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
