import argparse
from html_search_spider import HTMLSearchSpider

class SevenNetJPRetailSpider(HTMLSearchSpider):
    """Broad crawler for 7net (JP)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="7net (JP)",
            territory="Japan",
            base_url="https://7net.omni7.jp",
            search_path="search/?keyword={search_term}&page={page}",
            selectors={
                'container': 'div.subProduct, div.product-item, div.item, div[class*="product"]',
                'title': 'p.title, a.title, .product-title, h2, h3',
                'price': 'p.price, .price, span[class*="price"]',
                'link': 'a'
            },
            price_currency="JPY",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="7net JP Spider")
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args, _ = parser.parse_known_args()
    
    SevenNetJPRetailSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
