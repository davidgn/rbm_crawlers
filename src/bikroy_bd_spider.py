import argparse
import re
from html_search_spider import HTMLSearchSpider

class BikroyBdSpider(HTMLSearchSpider):
    """
    Spider for Bikroy (Bangladesh).
    The largest C2C classifieds marketplace in Bangladesh, serving as the local equivalent to OLX for textbook trading.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Bikroy",
            base_url="https://bikroy.com",
            search_path="en/ads/bangladesh/books?query={search_term}&page={page}",
            selectors={
                'container': 'li.gtm-normal-ad, div.ad-item, div[class*="ad-item"]',
                'title': 'h2, h3, a.title',
                'price': '.price, div.price',
                'link': 'a'
            },
            territory="Bangladesh",
            price_currency="BDT",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bikroy BD Spider")
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    
    spider = BikroyBdSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
