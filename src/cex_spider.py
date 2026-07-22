from html_search_spider import HTMLSearchSpider

class CexSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for Cex."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Cex",
            territory="Global",
            base_url="https://example.com",
            search_path="search?q={search_term}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'<div[^>]*class="[^"]*product[^"]*"[^>]*>(.*?)<\/div>',
            url_regex=r'<a[^>]*href="([^"]*)"[^>]*>',
            price_regex=r'\$([0-9]+\.[0-9]{2})',
            title_regex=r'<h1[^>]*>(.*?)<\/h1>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    CexSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
