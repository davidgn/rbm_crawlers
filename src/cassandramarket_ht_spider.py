import re
from html_search_spider import HTMLSearchSpider

class CassandraMarketHtSpider(HTMLSearchSpider):
    """Spider for Cassandra Online Market (Haiti). Online platform operating within Haiti."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CassandraMarket",
            base_url="https://cassandraonlinemarket.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Haiti",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = CassandraMarketHtSpider(limit_pages=args.limit_pages)
    spider.run()
