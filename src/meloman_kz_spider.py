from html_search_spider import HTMLSearchSpider

class MelomanKzSpider(HTMLSearchSpider):
    """
    Spider for Meloman (Kazakhstan).
    The largest online bookstore in Kazakhstan.
    Uses Magento.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Meloman",
            base_url="https://www.meloman.kz",
            search_path="catalogsearch/result/?q={query}&p={page}",
            selectors={
                'container': 'li.product-item', 
                'title': '.product-item-link',
                'link': '.product-item-link',
                'price': '.price-wrapper',
            },
            territory="Kazakhstan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = MelomanKzSpider(limit_pages=1)
    spider.run()
