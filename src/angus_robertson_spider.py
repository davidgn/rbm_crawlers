from html_search_spider import HTMLSearchSpider

class AngusRobertsonSpider(HTMLSearchSpider):
    """
    Broad crawler for Angus & Robertson (Australia).
    """
    def __init__(self, search_term: str = "book", limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Angus & Robertson",
            territory="Australia",
            base_url="https://www.angusrobertson.com.au",
            search_path=f"search?q={search_term}&page={{page}}",
            currency="AUD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            item_pattern=r'({\s*id:\s*"[^"]+",\s*sku_code:\s*"[^"]+",\s*name:\s*"[^"]+",\s*description:\s*"[^"]*",\s*url:\s*"[^"]+",\s*unit_price:\s*[\d.]+,\s*unit_sale_price:\s*[\d.]+,\s*currency:\s*"[^"]*",\s*.*?})',
            url_regex=r'url:\s*"([^"]+)"',
            price_regex=r'unit_sale_price:\s*([\d.]+)',
            title_regex=r'name:\s*"([^"]+)"',
            isbn_regex=r'(97[89]\d{10})'
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="book")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    AngusRobertsonSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
    ).run()
