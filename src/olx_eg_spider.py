from html_search_spider import HTMLSearchSpider

class OlxEgSpider(HTMLSearchSpider):
    """
    Broad crawler for OLX (Egypt).
    """
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="OLX Egypt",
            territory="Egypt",
            base_url="https://www.olx.com.eg",
            search_path=f"en/ads?q={search_term}&page={{page}}",
            currency="EGP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*data-aut-id="itemBox"[^>]*>.*?</div>)',
            url_regex=r'href="(/en/ad/[^"]+)"',
            price_regex=r'EGP\s*([\d,]+(?:\.\d{2})?)',
            title_regex=r'title="([^"]+)"',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    OlxEgSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
