import argparse
from html_search_spider import HTMLSearchSpider

class GandhiMxSpider(HTMLSearchSpider):
    """
    Spider for Librerías Gandhi (Mexico).
    Targeting the largest academic and general bookstore chain in Mexico for Spanish arbitrage.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Librerías Gandhi",
            base_url="https://www.gandhi.com.mx",
            search_path="catalogsearch/result/index/?p={page}&q={query}",
            selectors={
                "container": ".product-item-info",
                "title": ".product-item-name a",
                "link": ".product-item-name a",
                "price": ".price",
            },
            territory="Mexico",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MXN",
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Librerías Gandhi MX Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    GandhiMxSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
