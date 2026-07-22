import re
from html_search_spider import HTMLSearchSpider

class ChasseAuxLivresSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ChasseAuxLivres", base_url="https://chasse-aux-livres.fr",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="France", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ChasseAuxLivresSpider(limit_pages=1).run()
