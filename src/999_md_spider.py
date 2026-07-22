import argparse
import re
from html_search_spider import HTMLSearchSpider

class N999MdSpider(HTMLSearchSpider):
    """Native spider for 999.md (Moldova). The undisputed leading classifieds platform."""
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="999_MD",
            base_url="https://999.md",
            search_path="ro/search?query={search_term}&page={page}",
            selectors={
                'container': 'li.ads-list-detail-item, div.ads-list-photo-item, div[class*="ads-list"]',
                'title': 'h3, h2, a.ads-list-detail-item-title',
                'price': '.ads-list-detail-item-price, .price',
                'link': 'a'
            },
            territory="Moldova",
            price_currency="MDL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="999 MD Spider")
    parser.add_argument("--query", type=str, default="carti")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    spider = N999MdSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
