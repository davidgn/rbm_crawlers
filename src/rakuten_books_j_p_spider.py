from html_search_spider import HTMLSearchSpider

class RakutenBooksJPSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for Rakuten Books (JP)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Rakuten Books (JP)",
            territory="Global",
            base_url="https://books.rakuten.co.jp",
            search_path="search/?sitem=",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\d,]+(?:\.\d{2})?)',
            title_regex=r'<a[^>]*>([^<"]+)</a>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    RakutenBooksJPSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
