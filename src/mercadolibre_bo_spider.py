import re
from html_search_spider import HTMLSearchSpider


class MercadolibreBoSpider(HTMLSearchSpider):
    """Spider for MercadoLibre Bolivia (listado.mercadolibre.com.bo). Latin America's leading
    C2C and B2C marketplace with a dedicated Bolivia portal covering books, electronics,
    clothing, collectibles and all general merchandise categories."""

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MercadoLibre_BO", base_url="https://listado.mercadolibre.com.bo",
            search_path="{search_term}",
            selectors={'container': 'li.ui-search-layout__item', 'title': 'h2.ui-search-item__title', 'price': 'span.andes-money-amount__fraction'},
            territory="Bolivia", limit_pages=limit_pages
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()

    spider = MercadolibreBoSpider(limit_pages=args.limit_pages)
    spider.run()
