import re
from html_search_spider import HTMLSearchSpider


class AnnoncestchadTdSpider(HTMLSearchSpider):
    """Spider for Annonces Tchad (Chad).
    A national free classifieds platform for Chad, covering books,
    electronics, household goods, and general merchandise in French and Arabic.
    URL: https://www.annoncestchad.com
    """

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AnnoncesTchad",
            base_url="https://www.annoncestchad.com",
            search_path="recherche?q={query}&page={page}",
            selectors={
                'container': 'div.annonce-card',
                'title': 'h3.annonce-titre',
                'price': 'span.annonce-prix',
                'link': 'a.annonce-lien',
            },
            territory="Chad",
            limit_pages=limit_pages,
            price_currency="XAF",
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="AnnoncesTchad Chad classifieds spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = AnnoncestchadTdSpider(limit_pages=args.limit_pages)
    spider.run()
