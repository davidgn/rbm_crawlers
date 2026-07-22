from html_search_spider import HTMLSearchSpider

class BukalapakIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="bukalapak_id", base_url="https://www.bukalapak.com",
            search_path="products?search[keywords]={query}",
            selectors={'container': 'div.product-card', 'title': 'a.product__name', 'price': 'div.product-price', 'link': 'a.product__name'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BukalapakIdSpider(limit_pages=1).run()
