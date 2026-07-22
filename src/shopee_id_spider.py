from html_search_spider import HTMLSearchSpider

class ShopeeIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="shopee_id", base_url="https://shopee.co.id",
            search_path="search?keyword={query}",
            selectors={'container': 'div.col-xs-2-4', 'title': 'div.ie3A+n', 'price': 'div.vls-k', 'link': 'a'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ShopeeIdSpider(limit_pages=1).run()
