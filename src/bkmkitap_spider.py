import argparse
from html_search_spider import HTMLSearchSpider

class BkmKitapSpider(HTMLSearchSpider):
    """
    Broad crawler for BKM Kitap (Turkey).
    """
    def __init__(self, search_term: str = "kitap", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="BKM Kitap",
            territory="Turkey",
            base_url="https://www.bkmkitap.com",
            search_path="arama?q={search_term}&page={page}",
            selectors={
                'container': 'div.waw-product, div.product-item, div[class*="product"]',
                'title': 'p.product-title, a.title, .product-title, h3, a',
                'price': 'span.price, .price, span[class*="price"]',
                'link': 'a'
            },
            price_currency="TRY",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BKM Kitap Spider")
    parser.add_argument("--query", type=str, default="kitap")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    
    BkmKitapSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
