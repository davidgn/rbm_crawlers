from html_search_spider import HTMLSearchSpider

class ExclusiveBooksZASpider(HTMLSearchSpider):
    """Auto-generated broad crawler for ExclusiveBooksZA."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="ExclusiveBooksZA",
            territory="Global",
            base_url="https://exclusivebooks.co.za",
            search_path="search?q={search_term}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div class="product--content">.*?</div>\s*</div>\s*</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'R\s*([\d,]+(?:\.\d{2})?)',
            title_regex=r'<h3 class="product-collection--title"><a[^>]*>([^<]+)</a></h3>',
            isbn_regex=r'products/(\d{13})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    ExclusiveBooksZASpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
