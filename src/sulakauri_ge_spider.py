from playwright_search_spider import PlaywrightSearchSpider

class SulakauriSpider(PlaywrightSearchSpider):
    """
    Spider for Sulakauri Publishing / Santa Esperanza (Georgia).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Sulakauri",
            base_url="https://sulakauri.ge",
            search_path="ka/search?q={query}&page={page}",
            selectors={
                'container': 'div.product, .product-card, .item', 
                'title': 'h3, .title, .product-title',
                'link': 'a',
                'price': '.price',
            },
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = SulakauriSpider(limit_pages=1)
    spider.run()
