from html_search_spider import HTMLSearchSpider

class KnigaMkSpider(HTMLSearchSpider):
    """
    Broad crawler for TRI Publishing House & Bookstore (North Macedonia - kniga.mk) using HTML search parsing.
    Prices are in Macedonian Denars (MKD).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="TRI Publishing (Kniga.mk)",
            base_url="https://kniga.mk",
            search_path="search?query={query}",
            selectors={
                "item_container": ".product-single",
                "title": ".product-info h2 a",
                "author": ".product-info h4.product-name a",
                "price": ".product-info .price",
                "url": ".product-info h2 a, .product-thumb a"
            },
            territory="North Macedonia",
            price_currency="MKD",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    KnigaMkSpider(limit_pages=args.limit_pages).run()
