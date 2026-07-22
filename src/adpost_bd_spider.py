from html_search_spider import HTMLSearchSpider

class AdpostBdSpider(HTMLSearchSpider):
    """Native spider for AdPost Bangladesh."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adpost_BD",
            base_url="https://www.adpost.com/bd/",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bangladesh",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdpostBdSpider(limit_pages=1).run()
