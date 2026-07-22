import re
from html_search_spider import HTMLSearchSpider


class AfribabaGuineaSpider(HTMLSearchSpider):
    """Spider for Afribaba Guinea (gn.afribaba.com). Pan-African C2C classifieds portal
    serving Guinea with books, electronics, clothing, furniture and general merchandise listings."""

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_GN", base_url="https://gn.afribaba.com",
            search_path="search/?q={search_term}",
            selectors={'container': 'div.classified', 'title': 'h2.classified-title', 'price': 'span.classified-price'},
            territory="Guinea", limit_pages=limit_pages
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()

    spider = AfribabaGuineaSpider(limit_pages=args.limit_pages)
    spider.run()
