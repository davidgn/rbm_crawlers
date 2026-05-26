from playwright_search_spider import PlaywrightSearchSpider

class AlininoAzSpider(PlaywrightSearchSpider):
    """
    Spider for Alinino.az (Azerbaijan).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Alinino",
            base_url="https://alinino.az",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-card', 
                'title': '.product-card__title',
                'link': '.product-card__title',
                'price': '.product-card__price',
            },
            territory="Azerbaijan",
            limit_pages=limit_pages
        )


if __name__ == "__main__":
    spider = AlininoAzSpider(limit_pages=1)
    spider.run()
