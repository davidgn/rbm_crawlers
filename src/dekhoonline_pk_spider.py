from html_search_spider import HTMLSearchSpider

class DekhoonlinePkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="dekhoonline_pk", base_url="https://dekhoonline.pk",
            search_path="search?q={query}",
            selectors={'container': 'div.ad-box', 'title': 'h4.ad-title', 'price': 'div.ad-price', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DekhoonlinePkSpider(limit_pages=1).run()
