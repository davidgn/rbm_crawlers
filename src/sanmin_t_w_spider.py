from html_search_spider import HTMLSearchSpider

class SanminTWSpider(HTMLSearchSpider):
    """Broad crawler for Sanmin (TW) (Taiwan)."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Sanmin (TW)",
            territory="Taiwan",
            base_url="www.sanmin.com.tw",
            search_path="search/index/?ct=K&qu={search_term}",
            currency="TWD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card|prod_item)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'([\d,]+(?:\.\d{2})?)[\s]*NT\$|NT\$[\s]*([\d,]+(?:\.\d{2})?)',
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
    
    SanminTWSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
