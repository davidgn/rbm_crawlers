from html_search_spider import HTMLSearchSpider

class BooktopiaSpider(HTMLSearchSpider):
    """
    Broad crawler for Booktopia (Australia).
    """
    def __init__(self, search_term: str = "book", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Booktopia",
            territory="Australia",
            base_url="https://www.booktopia.com.au",
            search_path=f"search?keywords={search_term}&page={{page}}",
            currency="AUD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'(<div[^>]*class="[^"]*product[^"]*"[^>]*>.*?</div>)',
            url_regex=r'href="(/[^"]+)"',
            price_regex=r'\$\s*([\d,]+(?:\.\d{2})?)',
            title_regex=r'title="([^"]+)"',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    BooktopiaSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
