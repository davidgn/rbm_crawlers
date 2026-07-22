from html_search_spider import HTMLSearchSpider

class AlibRUSpider(HTMLSearchSpider):
    """Auto-generated broad crawler for AlibRU."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="AlibRU",
            territory="Global",
            base_url="http://www.alib.ru",
            search_path="find3.php4?tfind={query}",
            currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'<p><b>[\s\S]*?<\/p>',
            url_regex=r'<a href="([^"]+)"><b>Купить<\/b><\/a>',
            price_regex=r'Цена:\s*([\d\s]+)\s*руб\.',
            title_regex=r'<p><b>(.*?)<\/b>',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    AlibRUSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
