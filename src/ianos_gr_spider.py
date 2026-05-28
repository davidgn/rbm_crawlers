from html_search_spider import HTMLSearchSpider

class IanosGrSpider(HTMLSearchSpider):
    """
    Spider for Ianos (Greece).
    A leading bookstore chain in Greece.
    Uses Magento.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Ianos",
            base_url="https://www.ianos.gr",
            search_path="catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': '.product-item', 
                'title': '.product-item-link',
                'link': '.product-item-link',
                'price': '.price-wrapper',
            },
            territory="Greece",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = IanosGrSpider(limit_pages=1)
    spider.run()
