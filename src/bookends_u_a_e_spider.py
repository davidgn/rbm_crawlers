from html_search_spider import HTMLSearchSpider

class BookendsUAESpider(HTMLSearchSpider):
    """Auto-generated broad crawler for Bookends (UAE)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Bookends (UAE)",
            territory="Global",
            base_url="https://bookends.ae",
            search_path="search?q={query}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(\{&quot;price&quot;:\{&quot;amount&quot;:.*?&quot;type&quot;:&quot;.*?&quot;\})',
            url_regex=r'&quot;url&quot;:&quot;(.*?)&quot;',
            price_regex=r'&quot;amount&quot;:([0-9.]+)',
            title_regex=r'&quot;title&quot;:&quot;(.*?)&quot;',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    BookendsUAESpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
