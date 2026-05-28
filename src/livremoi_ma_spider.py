from html_search_spider import HTMLSearchSpider

class LivremoiMaSpider(HTMLSearchSpider):
    """
    Spider for LivreMoi (Morocco).
    A major online bookstore based in Casablanca.
    Uses the Magento platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LivreMoi",
            base_url="https://www.livremoi.ma",
            search_path="catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': '.product-item', 
                'title': '.product-item-link',
                'link': '.product-item-link',
                'price': '.price-wrapper',
            },
            territory="Morocco",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LivremoiMaSpider(limit_pages=1)
    spider.run()
