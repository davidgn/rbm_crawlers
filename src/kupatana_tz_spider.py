import re
from html_search_spider import HTMLSearchSpider

class KupatanaTzSpider(HTMLSearchSpider):
    """Native spider for Kupatana (Tanzania)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kupatana_TZ", base_url="https://kupatana.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KupatanaTzSpider(limit_pages=1).run()
