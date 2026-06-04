import argparse
from shopee_sea_base import ShopeeSeaSpider

class ShopeeThSpider(ShopeeSeaSpider):
    def __init__(self, limit_pages=5):
        super().__init__(
            platform_name="Shopee Thailand",
            territory="Thailand",
            base_url="https://shopee.co.th",
            search_query="หนังสือ มือสอง",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2)
    args = parser.parse_args()
    spider = ShopeeThSpider(limit_pages=args.limit)
    spider.run()
