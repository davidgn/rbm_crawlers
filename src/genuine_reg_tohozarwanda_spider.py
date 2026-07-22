import re
from html_search_spider import HTMLSearchSpider

class TohozaRwandaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="TohozaRwanda", base_url="https://tohoza.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Rwanda", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TohozaRwandaSpider(limit_pages=1).run()
