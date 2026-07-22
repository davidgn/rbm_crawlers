import re
from html_search_spider import HTMLSearchSpider

class AvisosDeOcasionMxSpider(HTMLSearchSpider):
    """Native spider for Avisos de Ocasion (Mexico)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AvisosDeOcasion_MX", base_url="https://avisosdeocasion.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mexico", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AvisosDeOcasionMxSpider(limit_pages=1).run()
