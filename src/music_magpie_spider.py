from html_search_spider import HTMLSearchSpider

class MusicMagpieSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for MusicMagpie."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="MusicMagpie",
            territory="Global",
            base_url="https://apps-api.uks.live.channels.em-infra.com",
            search_path="search?q={search_term}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'<div class="product">([\s\S]*?)</div>',
            url_regex=r'<a[^>]+href="([^"]+)"',
            price_regex=r'\$([0-9]+(?:\.[0-9]{2})?)',
            title_regex=r'<h[1-6][^>]*class="[^"]*title[^"]*"[^>]*>([^<]+)</h[1-6]>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    MusicMagpieSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
