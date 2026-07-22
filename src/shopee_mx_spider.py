from html_search_spider import HTMLSearchSpider

class ShopeeMxSpider(HTMLSearchSpider):
    """Spider for Shopee (Mexico)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Shopee Mexico",
            base_url="https://shopee.com.mx",
            search_path="search?keyword={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mexico",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = ShopeeMxSpider()
    spider.run()
