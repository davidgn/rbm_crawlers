from html_search_spider import HTMLSearchSpider

class DolapSpider(HTMLSearchSpider):
    """
    Broad crawler for Dolap (Turkey) - C2C marketplace.
    """
    def __init__(self, search_term: str = "kitap", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Dolap",
            territory="Turkey",
            base_url="https://dolap.com",
            search_path=f"arama?q={search_term}&page={{page}}",
            currency="TRY",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*product-card[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'class="price"[^>]*>([\d,]+(?:\.\d{2})?)',
            title_regex=r'class="title"[^>]*>([^<]+)<',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="kitap")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    DolapSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
