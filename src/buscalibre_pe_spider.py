import argparse

from html_search_spider import HTMLSearchSpider


class BuscalibrePeSpider(HTMLSearchSpider):
    """Spider for Buscalibre Peru."""

    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Buscalibre Peru",
            base_url="https://www.buscalibre.pe",
            search_path="libros/search?q={query}&page={page}",
            selectors={
                "container": ".producto",
                "title": "h3.nombre",
                "link": "a",
                "price": ".precio",
            },
            territory="Peru",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PEN",
        )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Buscalibre Peru books spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    BuscalibrePeSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
