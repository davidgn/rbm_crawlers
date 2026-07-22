from html_search_spider import HTMLSearchSpider

class NeelWaFuratSpider(HTMLSearchSpider):
    """
    Broad crawler for Neel wa Furat (MENA).
    """
    def __init__(self, search_term: str = "book", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Neel wa Furat",
            territory="MENA",
            base_url="https://www.neelwafurat.com",
            search_path=f"search.aspx?search={search_term}&page={{page}}",
            currency="USD", # Neel wa Furat typically prices in USD
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'',
            url_regex=r'',
            price_regex=r'',
            title_regex=r'',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    NeelWaFuratSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
