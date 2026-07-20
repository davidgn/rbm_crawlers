from html_search_spider import HTMLSearchSpider

class CommunitasPeSpider(HTMLSearchSpider):
    """
    Broad crawler for Librería Communitas (Peru) using HTML search parsing.
    Prices are in Peruvian Soles (PEN).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Libreria Communitas",
            base_url="https://www.communitas.pe",
            search_path="shop?search={query}",
            selectors={
                "item_container": "div.oe_product",
                "title": "h6.o_wsale_products_item_title a",
                "author": "span.author_name",
                "price": "div.product_price span.oe_currency_value",
                "url": "h6.o_wsale_products_item_title a"
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

    CommunitasPeSpider(limit_pages=args.limit_pages).run()
