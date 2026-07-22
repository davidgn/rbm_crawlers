from html_search_spider import HTMLSearchSpider

class BookOffSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for BookOff_Online."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="BookOff_Online",
            territory="Global",
            base_url="https://www.bookoffonline.co.jp",
            search_path="display/L001,st=a,q={query}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'data-item="([^"]+)"',
            url_regex=r'href="([^"]+)"',
            price_regex=r'data-price="([^"]+)"',
            title_regex=r'<title>(.*?)<\/title>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    BookOffSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
