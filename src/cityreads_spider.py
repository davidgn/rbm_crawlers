import argparse
from shopify_spider import ShopifyAPISpider

class CityReadsSpider(ShopifyAPISpider):
    """
    City Reads Books & Stationery (cityreadsbookstore.com) — Ghana main-universe.
    Ghanaian bookstore with a broad new-book catalog.
    Re-written to use standard Shopify JSON API endpoint.
    """
    def __init__(self, limit_pages=10, limit_items=50):
        super().__init__(
            platform_name="City Reads",
            base_url="https://cityreadsbookstore.com",
            territory="Ghana",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=10)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    spider = CityReadsSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
