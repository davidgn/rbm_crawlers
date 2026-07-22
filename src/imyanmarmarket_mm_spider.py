import re
from html_search_spider import HTMLSearchSpider

class IMyanmarMarketMmSpider(HTMLSearchSpider):
    """Spider for iMyanmarMarket (Myanmar). A general classifieds and C2C platform where users trade books."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="iMyanmarMarket",
            base_url="https://www.imyanmarmarket.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Myanmar",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = IMyanmarMarketMmSpider(limit_pages=args.limit_pages)
    spider.run()
