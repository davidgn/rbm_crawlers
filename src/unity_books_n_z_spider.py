from html_search_spider import HTMLSearchSpider

class UnityBooksNZSpider(HTMLSearchSpider):
    """Broad crawler for Unity Books (NZ) (New Zealand)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Unity Books (NZ)",
            territory="New Zealand",
            base_url="unitybooks.co.nz",
            search_path="?s={search_term}&post_type=product",
            currency="NZD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|listing)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'\$([\d,]+(?:\.\d{2})?)|([\d,]+(?:\.\d{2})?)[\s]*\$',
            title_regex=r'(?:title="|<h[1-6][^>]*>|<a[^>]*>)([^<"]+)(?:"|</h[1-6]>|</a>)',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    UnityBooksNZSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
