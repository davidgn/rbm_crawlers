import re
from html_search_spider import HTMLSearchSpider

class RodwokoBurkinaFasoFinalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="RodwokoBurkinaFasoFinal", base_url="https://rodwoko.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Burkina Faso", limit_pages=limit_pages
        )

if __name__ == "__main__":
    RodwokoBurkinaFasoFinalSpider(limit_pages=1).run()
