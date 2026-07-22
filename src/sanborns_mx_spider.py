import argparse
from html_search_spider import HTMLSearchSpider

class SanbornsMxSpider(HTMLSearchSpider):
    """
    Spider for Sanborns (Mexico).
    Targeting the massive Mexican department store's book division.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Sanborns",
            base_url="https://www.sanborns.com.mx",
            search_path="resultados/q={query}/page={page}",
            selectors={
                "container": ".product-card",
                "title": ".product-name",
                "link": "a.product-card-link",
                "price": ".product-price",
            },
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Sanborns MX Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    SanbornsMxSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
