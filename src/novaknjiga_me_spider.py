from html_search_spider import HTMLSearchSpider

class NovaknjigaMeSpider(HTMLSearchSpider):
    """
    Broad crawler for Nova Knjiga (Montenegro) using HTML search parsing.
    Prices are in Euros (EUR).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Nova Knjiga",
            base_url="https://novaknjiga.com",
            search_path="me/pretraga/?search_text_box={query}",
            selectors={
                "item_container": ".product_grid_item, .product_wrap, .product_box, .product_info",
                "title": ".product_title a, .product_name a, h6 a, h5 a",
                "price": ".product_price, .price, .price_amount",
                "url": "a"
            },
            territory="Montenegro",
            price_currency="EUR",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    NovaknjigaMeSpider(limit_pages=args.limit_pages).run()
