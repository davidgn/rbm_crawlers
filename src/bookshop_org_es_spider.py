import argparse
from bookshop_org_search_spider import BookshopOrgSearchSpider

class BookshopSpainHubSpider(BookshopOrgSearchSpider):
    """Direct search spider for Bookshop.org Spain Hub (Bookshop.org platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Bookshop.org Spain Hub",
            subdomain="es",
            territory="Spain",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Bookshop.org Spain Hub Spider")
    parser.add_argument("--query", type=str, default="potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = BookshopSpainHubSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
