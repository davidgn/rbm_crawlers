from html_search_spider import HTMLSearchSpider

class AntoineLbSpider(HTMLSearchSpider):
    """
    Spider for Librairie Antoine (Lebanon).
    A leading bookstore chain in the Levant.
    Uses the Magento platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librairie Antoine",
            base_url="https://www.antoineonline.com",
            search_path="intr/en/catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': '.product-item', 
                'title': '.product-item-link',
                'link': '.product-item-link',
                'price': '.price-wrapper',
            },
            territory="Lebanon",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = AntoineLbSpider(limit_pages=1)
    spider.run()
