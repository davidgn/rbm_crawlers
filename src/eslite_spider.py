from html_search_spider import HTMLSearchSpider

class EsliteSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for Eslite."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Eslite",
            territory="Global",
            base_url="https://www.eslite.com",
            search_path="Search?keyword={query}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'<div[^>]*class=["\'][^"\']*product[^"\']*["\'][^>]*>([\s\S]*?)</div>',
            url_regex=r'href=["\']([^"\']+)["\']',
            price_regex=r'[$NT€£]\s*([0-9,]+(?:\.[0-9]+)?)',
            title_regex=r'title=["\']([^"\']+)["\']',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    EsliteSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
