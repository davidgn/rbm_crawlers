import re
from html_search_spider import HTMLSearchSpider

class ExpatriatesSaSpider(HTMLSearchSpider):
    """Native spider for Expatriates (Saudi Arabia)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Expatriates_SA", base_url="https://www.expatriates.com",
            search_path="classifieds/saudi-arabia/?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Saudi Arabia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ExpatriatesSaSpider(limit_pages=1).run()
