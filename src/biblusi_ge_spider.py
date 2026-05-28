from playwright_search_spider import PlaywrightSearchSpider

class BiblusiGeSpider(PlaywrightSearchSpider):
    """
    Spider for Biblusi (Georgia).
    Uses Playwright to handle Nuxt.js rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Biblusi",
            base_url="https://biblusi.ge",
            search_path="products?keyword={query}&page={page}",
            selectors={
                'container': '.product-card', 
                'title': '.title',
                'link': 'a',
                'price': '.price',
            },
            territory="Georgia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BiblusiGeSpider(limit_pages=1)
    spider.run()
