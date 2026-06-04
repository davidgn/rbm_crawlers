import argparse
from shopee_sea_base import ShopeeSeaSpider

class ShopeeIdSpider(ShopeeSeaSpider):
    def __init__(self, limit_pages=5):
        super().__init__(
            platform_name="Shopee Indonesia",
            territory="Indonesia",
            base_url="https://shopee.co.id",
            search_query="buku bekas",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2)
    args = parser.parse_args()
    spider = ShopeeIdSpider(limit_pages=args.limit)
    spider.run()
