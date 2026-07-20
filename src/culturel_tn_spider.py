from html_search_spider import HTMLSearchSpider

class CulturelTnSpider(HTMLSearchSpider):
    """
    Spider for Le Culturel (Tunisia).
    A major online & physical bookstore chain in Tunisia.
    Uses Magento.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Le Culturel",
            base_url="https://www.culturel.tn",
            search_path="catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': '.item, .product-item', 
                'title': '.product-name a, .product-item-link',
                'link': '.product-name a, .product-item-link',
                'price': '.price, .price-box',
            },
            territory="Tunisia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = CulturelTnSpider(limit_pages=1)
    spider.run()
