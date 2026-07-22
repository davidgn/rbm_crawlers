from html_search_spider import HTMLSearchSpider

class ElAteneoARSpider(HTMLSearchSpider):
    """Broad crawler for El Ateneo (AR) (Argentina) - Tiendanube."""
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="El Ateneo (AR)",
            territory="Argentina",
            base_url="https://www.yenny-elateneo.com",
            search_path="search?q={search_term}",
            currency="ARS",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<script[^>]*application/ld\+json[^>]*>.*?</script>)',
            url_regex=r'"url"\s*:\s*"([^"]+)"',
            price_regex=r'"price"\s*:\s*"([\d,.]+)"',
            title_regex=r'"name"\s*:\s*"([^"]+)"',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    ElAteneoARSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
