import argparse
from shopee_sea_base import ShopeeSeaSpider

class ShopeePhSpider(ShopeeSeaSpider):
    def __init__(self, limit_pages=5):
        super().__init__(
            platform_name="Shopee Philippines",
            territory="Philippines",
            base_url="https://shopee.ph",
            search_query="preloved books",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2)
    args = parser.parse_args()
    spider = ShopeePhSpider(limit_pages=args.limit)
    spider.run()
