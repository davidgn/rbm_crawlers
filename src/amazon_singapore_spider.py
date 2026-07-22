from html_search_spider import HTMLSearchSpider

class AmazonSingaporeSpider(HTMLSearchSpider):
    """Broad crawler for Amazon Singapore (Nigeria)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Amazon Singapore",
            territory="Nigeria",
            base_url="https://www.amazon.sg",
            search_path="s?k={search_term}",
            currency="NGN",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'(?:\$|NGN|)[\s]*([\d,]+(?:\.\d{2})?)',
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
    
    AmazonSingaporeSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
