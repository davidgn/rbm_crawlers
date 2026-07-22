from vtex_search_spider import VtexSearchSpider

class SbsARSpider(VtexSearchSpider):
    """Broad crawler for SBS (AR) (Argentina)."""
    def __init__(self, search_term: str = "libros", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="SBS (AR)",
            host="www.sbs.com.ar",
            territory="Argentina",
            search_term=search_term,
            currency="ARS",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    SbsARSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
