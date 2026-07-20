from html_search_spider import HTMLSearchSpider

class SbsPeSpider(HTMLSearchSpider):
    """
    Broad crawler for SBS Librería Internacional (Peru) using HTML search parsing.
    Prices are in Peruvian Soles (PEN).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="SBS Libreria Internacional",
            base_url="https://www.sbs.com.pe",
            search_path="catalogsearch/result/?q={query}",
            selectors={
                "container": "li.product-item",
                "title": "a.product-item-link",
                "author": "div.author-name",
                "price": "span.price",
                "url": "a.product-item-link"
            },
            territory="Peru",
            price_currency="PEN",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    SbsPeSpider(limit_pages=args.limit_pages).run()
