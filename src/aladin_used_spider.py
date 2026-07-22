from html_search_spider import HTMLSearchSpider

class AladinUsedSpider(HTMLSearchSpider):
    """Broad crawler for Aladin Used."""
    def __init__(self, search_term: str = "books", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="AladinUsed",
            territory="South Korea",
            base_url="https://www.aladin.co.kr",
            search_path=f"search/wsearchresult.aspx?SearchTarget=Used&SearchWord={search_term}&page={{page}}",
            price_currency="KRW",
            limit_pages=limit_pages,
            limit_items=limit_items,
            selectors={
                "container": ".ss_book_box",
                "title": "a.bo3",
                "link": "a.bo3",
                "price": ".ss_p2 b, .ss_p2 span, .ss_p2",
            },
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    AladinUsedSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
