from html_search_spider import HTMLSearchSpider

class AsaxiyUzSpider(HTMLSearchSpider):
    """
    Spider for Asaxiy.uz (Uzbekistan).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Asaxiy",
            base_url="https://asaxiy.uz",
            search_path="uz/product?key={query}",
            selectors={
                'container': 'div.product__item', 
                'title': '.product__item__info-title',
                'link': 'a',
                'price': '.product__item-price',
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = AsaxiyUzSpider(limit_pages=1)
    spider.run()
