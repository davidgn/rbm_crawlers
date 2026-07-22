import re
from html_search_spider import HTMLSearchSpider


class ExpatGnSpider(HTMLSearchSpider):
    """Spider for Expat.com Guinea classifieds. International classifieds platform with
    a dedicated Guinea section covering books, household goods, electronics and general
    merchandise for C2C sellers in Guinea."""

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Expat_GN", base_url="https://www.expat.com",
            search_path="classifieds/guinea/search/?q={search_term}",
            selectors={'container': 'div.classifieds-item', 'title': 'h2.item-title', 'price': 'span.item-price'},
            territory="Guinea", limit_pages=limit_pages
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()

    spider = ExpatGnSpider(limit_pages=args.limit_pages)
    spider.run()
