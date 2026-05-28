from html_search_spider import HTMLSearchSpider

class AsaxiyUzSpider(HTMLSearchSpider):
    """
    Spider for Asaxiy.uz (Uzbekistan).
    Largest online bookstore in Uzbekistan.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Asaxiy.uz",
            base_url="https://asaxiy.uz",
            search_path="uz/product?key={query}&page={page}",
            selectors={
                'container': 'div.product__item', 
                'title': '.product__item__info-title',
                'link': 'a.title__link', # Need to verify this again
                'price': '.product__item__info-price',
            },
            territory="Uzbekistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = AsaxiyUzSpider(limit_pages=1)
    spider.run()
