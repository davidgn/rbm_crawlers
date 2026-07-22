import argparse
from mbs_search_spider import MbsSearchSpider

class McgillUniversityBookstoreSpider(MbsSearchSpider):
    """Direct search spider for McGill University Bookstore (MBS Systems platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="McGill University Bookstore",
            base_url="lejames.ca",
            territory="Canada",
            price_currency="CAD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="McGill University Bookstore Spider")
    parser.add_argument("--query", type=str, default="potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = McgillUniversityBookstoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
