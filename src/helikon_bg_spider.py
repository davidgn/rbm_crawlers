from html_search_spider import HTMLSearchSpider

class HelikonBgSpider(HTMLSearchSpider):
    """
    Spider for Helikon (Bulgaria).
    A leading online bookstore in Bulgaria.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Helikon",
            base_url="https://helikon.bg",
            search_path="search/?q={query}&page={page}",
            selectors={
                'container': '.product', 
                'title': '.product-title a',
                'link': '.product-title a',
                'price': '.price',
            },
            territory="Bulgaria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = HelikonBgSpider(limit_pages=1)
    spider.run()
