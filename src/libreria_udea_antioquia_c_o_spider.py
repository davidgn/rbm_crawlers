from html_search_spider import HTMLSearchSpider

class LibreriaUdeaAntioquiaCOSpider(HTMLSearchSpider):
    """Broad crawler for Librería U de Antioquia (CO) (Colombia)."""
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Librería U de Antioquia (CO)",
            territory="Colombia",
            base_url="https://www.udea.edu.co",
            search_path="wps/portal/udea/web/inicio/editorial?q={search_term}",
            currency="COP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*(?:product|item|card)[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="([^"]+)"',
            price_regex=r'(?:\$|COP|)[\s]*([\d,]+(?:\.\d{2})?)',
            title_regex=r'(?:title="|<h[1-6][^>]*>|<a[^>]*>)([^<"]+)(?:"|</h[1-6]>|</a>)',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    LibreriaUdeaAntioquiaCOSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
