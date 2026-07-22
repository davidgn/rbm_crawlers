from html_search_spider import HTMLSearchSpider

class LocantoBdSpider(HTMLSearchSpider):
    """Native spider for Locanto Bangladesh."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_BD",
            base_url="https://www.locanto.com.bd",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bangladesh",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoBdSpider(limit_pages=1).run()
