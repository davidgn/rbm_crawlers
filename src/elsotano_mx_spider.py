import argparse
from html_search_spider import HTMLSearchSpider

class ElSotanoMxSpider(HTMLSearchSpider):
    """
    Spider for El Sótano (Mexico).
    Targeting one of Mexico's most prominent independent bookstore chains for rare Spanish literature.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="El Sótano",
            base_url="https://www.elsotano.com",
            search_path="busqueda?q={query}&page={page}",
            selectors={
                "container": ".product-item",
                "title": ".product-title a",
                "link": ".product-title a",
                "price": ".price-current",
            },
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="El Sótano MX Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    ElSotanoMxSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
