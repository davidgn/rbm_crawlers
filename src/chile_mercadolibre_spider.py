import re
from html_search_spider import HTMLSearchSpider

class ChileMercadolibreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MercadoLibre_CL", base_url="https://listado.mercadolibre.cl",
            search_path="{search_term}#D[A:{search_term}]",
            selectors={'container': '.ui-search-result__wrapper', 'title': 'h2', 'price': '.andes-money-amount__fraction'},
            territory="Chile", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    args = parser.parse_args()
    ChileMercadolibreSpider(limit_pages=1).run(search_term=args.query)
