import argparse
from magento_search_spider import MagentoSearchSpider

class SapnaBookHouseIndiaSpider(MagentoSearchSpider):
    """Direct search spider for Sapna Book House India (Magento platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Sapna Book House India",
            base_url="www.sapnaonline.com",
            territory="India",
            price_currency="INR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Sapna Book House India Spider")
    parser.add_argument("--query", type=str, default="potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = SapnaBookHouseIndiaSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
