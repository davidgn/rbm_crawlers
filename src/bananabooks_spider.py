from html_search_spider import HTMLSearchSpider

class BananabooksSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for Bananabooks."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Bananabooks",
            territory="Global",
            base_url="https://banana-webapi.azurewebsites.net",
            search_path="api",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'<div[^>]*class=["\'][^"\']*product[^"\']*["\'][^>]*>',
            url_regex=r'href=["\'](https?:\/\/[^"\']+|\/[^"\']+)["\']',
            price_regex=r'[$€£]\s*(\d+(?:,\d{3})*(?:\.\d{2})?)',
            title_regex=r'<(?:h[1-6]|span|div)[^>]*class=["\'][^"\']*title[^"\']*["\'][^>]*>(.*?)<\/(?:h[1-6]|span|div)>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    BananabooksSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
