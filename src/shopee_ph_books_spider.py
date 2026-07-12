import argparse
from shopee_sea_base import ShopeeSeaSpider

class ShopeePhSpider(ShopeeSeaSpider):
    def __init__(self, limit_pages=5, limit_items=10):
        super().__init__(
            platform_name="Shopee Philippines",
            territory="Philippines",
            base_url="https://shopee.ph",
            search_query="preloved books",
            limit_pages=limit_pages,
            limit_items=limit_items,
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    spider = ShopeePhSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 10,
    )
    spider.run()
