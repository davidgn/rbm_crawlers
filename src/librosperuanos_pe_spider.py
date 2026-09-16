from html_search_spider import HTMLSearchSpider

class LibrosperuanosPeSpider(HTMLSearchSpider):
    """
    Broad crawler for Libros Peruanos (Peru) using HTML search parsing.
    Prices are in Peruvian Soles (PEN).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None):
        super().__init__(
            platform_name="Libros Peruanos",
            base_url="https://www.librosperuanos.com",
            search_path="libros/buscar/?q={query}&opc=ti",
            selectors={
                "item_container": ".cntitem",
                "title": ".td-title a",
                "author": ".td-autor",
                "price": ".td-price",
                "url": ".td-title a"
            },
            territory="Peru",
            price_currency="PEN",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()

    LibrosperuanosPeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
