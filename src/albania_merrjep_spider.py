import re
from html_search_spider import HTMLSearchSpider

class AlbaniaMerrjepSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MerrJep_AL", base_url="https://www.merrjep.al",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Albania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AlbaniaMerrjepSpider(limit_pages=1).run()
