import re
from html_search_spider import HTMLSearchSpider

class Classi4uFaroeIslandsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Classi4uFaroeIslands", base_url="https://faroeislands.classi4u.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Faeroe Islands", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Classi4uFaroeIslandsSpider(limit_pages=1).run()
