from html_search_spider import HTMLSearchSpider

class FarpostSpider(HTMLSearchSpider):
    """Native spider for Farpost (Russia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Farpost",
            base_url="https://www.farpost.ru",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Russia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    FarpostSpider(limit_pages=1).run()
