import re
from html_search_spider import HTMLSearchSpider

class Yes24KrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Yes24_KR", base_url="https://www.yes24.com",
            search_path="product/search?query={search_term}",
            selectors={
                'container': 'li[data-goods-no]',
                'title': 'a.gd_name',
                'price': '.txt_num em.yes_b'
            },
            price_currency="KRW",
            territory="South Korea", limit_pages=limit_pages
        )
        self.homepage_visited = False

    def _get_robust_response(self, url, max_retries=3):
        if not self.homepage_visited:
            self.logger.info("First request: visiting homepage to establish session...")
            try:
                self.client.get(self.base_url)
                self.homepage_visited = True
            except Exception as e:
                self.logger.warning(f"Failed to visit homepage: {e}")
        return super()._get_robust_response(url, max_retries)

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "소년이 온다"
    Yes24KrSpider(limit_pages=1).run()
