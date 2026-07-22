from html_search_spider import HTMLSearchSpider

class GalamTmSpider(HTMLSearchSpider):
    """
    Broad crawler for Galam Bookstore (Turkmenistan) using HTML search parsing.
    Prices are in Turkmenistan Manat (TMT).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Galam",
            base_url="https://galam.tm",
            search_path="index.php?route=product/search&search={query}",
            selectors={
                "container": "div.product-layout",
                "title": "h4 a",
                "price": "span.price-new",
                "link": "h4 a"
            },
            territory="Turkmenistan",
            price_currency="TMT",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    GalamTmSpider(limit_pages=args.limit_pages).run()
