import re
from html_search_spider import HTMLSearchSpider


class AnnoncesTnSpider(HTMLSearchSpider):
    """Spider for Annonce.tn (Tunisia). One of Tunisia's established C2C classifieds platforms
    covering books, electronics, clothing, furniture and general merchandise in French and Arabic."""

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Annonce_TN", base_url="https://www.annonce.tn",
            search_path="recherche?q={search_term}",
            selectors={'container': 'div.annonce-item', 'title': 'h2.annonce-title', 'price': 'span.annonce-price'},
            territory="Tunisia", limit_pages=limit_pages
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()

    spider = AnnoncesTnSpider(limit_pages=args.limit_pages)
    spider.run()
