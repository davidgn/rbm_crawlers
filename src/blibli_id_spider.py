from html_search_spider import HTMLSearchSpider

class BlibliIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="blibli_id", base_url="https://www.blibli.com",
            search_path="jual/{query}",
            selectors={'container': 'div.product-detail', 'title': 'h3.product-title', 'price': 'div.product-price', 'link': 'a'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BlibliIdSpider(limit_pages=1).run()
