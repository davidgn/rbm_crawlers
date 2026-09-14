import argparse
from shopify_search_spider import ShopifySearchSpider

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bokin Iceland spider")
    parser.add_argument("--query", type=str, default="island")
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = ShopifySearchSpider(
        platform_name="Bokin",
        base_url="https://www.bokin.is",
        territory="Iceland",
        price_currency="ISK",
        limit_items=args.limit_items
    )
    spider.run(search_term=args.query)
