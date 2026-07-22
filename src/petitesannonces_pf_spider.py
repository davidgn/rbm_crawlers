import re
from html_search_spider import HTMLSearchSpider

class PetitesAnnoncesPfSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PetitesAnnonces_PF", base_url="https://petitesannonces.pf",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="French Polynesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PetitesAnnoncesPfSpider(limit_pages=1).run()
