import re
from html_search_spider import HTMLSearchSpider

class ParuvenduFrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Paruvendu_FR", base_url="https://www.paruvendu.fr",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="France", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ParuvenduFrSpider(limit_pages=1).run()
