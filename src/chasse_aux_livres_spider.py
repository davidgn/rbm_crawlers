from html_search_spider import HTMLSearchSpider

class ChasseAuxLivresSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for ChasseAuxLivres."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="ChasseAuxLivres",
            territory="Global",
            base_url="https://www.chasse-aux-livres.fr",
            search_path="vendre?ean={query}&mobile=android",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'',
            url_regex=r'',
            price_regex=r'',
            title_regex=r'',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    ChasseAuxLivresSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
