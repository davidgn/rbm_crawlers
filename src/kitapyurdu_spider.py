from html_search_spider import HTMLSearchSpider

class KitapyurduSpider(HTMLSearchSpider):
    """
    Broad crawler for Kitapyurdu (Turkey).
    """
    def __init__(self, search_term: str = "kitap", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Kitapyurdu",
            territory="Turkey",
            base_url="https://www.kitapyurdu.com",
            search_path=f"index.php?route=product/search&filter_name={search_term}&page={{page}}",
            currency="TRY",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*product-cr[^"]*"[^>]*>.*?</div>\s*</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'class="price-new">[^<]*<span class="value">([\d,]+(?:\.\d{2})?)</span>',
            title_regex=r'class="name"[^>]*><a[^>]*><span[^>]*>([^<]+)</span>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="kitap")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    KitapyurduSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
