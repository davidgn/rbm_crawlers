from html_search_spider import HTMLSearchSpider

class SanmarinolibriSmSpider(HTMLSearchSpider):
    """
    Broad crawler for San Marino Libri (San Marino) using HTML search parsing.
    Prices are in Euros (EUR).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="San Marino Libri",
            base_url="https://www.sanmarinolibri.com",
            search_path="Ricerca/Catalogo.aspx?RI={query}",
            selectors={
                "container": "div.CardLibro",
                "title": "div.CardTitolo a",
                "price": "div.CardPrezzo",
                "link": "div.CardTitolo a",
                "author": "div.CardAutore"
            },
            territory="San Marino",
            price_currency="EUR",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    SanmarinolibriSmSpider(limit_pages=args.limit_pages).run()
