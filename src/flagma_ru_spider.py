from html_search_spider import HTMLSearchSpider

class FlagmaRuSpider(HTMLSearchSpider):
    """Native spider for Flagma Russia."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Flagma_RU",
            base_url="https://flagma.ru",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Russia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    FlagmaRuSpider(limit_pages=1).run()
