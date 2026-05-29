from playwright_search_spider import PlaywrightSearchSpider

class MartinusSkSpider(PlaywrightSearchSpider):
    """
    Spider for Martinus (Slovakia).
    Uses Playwright to handle React/SPA rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Martinus",
            base_url="https://www.martinus.sk",
            search_path="vyhladavanie?q={query}&page={page}",
            selectors={
                'container': 'div.listing-item', 
                'title': 'a.listing-item__title',
                'link': 'a.listing-item__title',
                'price': '.listing-item__price',
                'author': '.listing-item__author'
            },
            territory="Slovakia",
            limit_pages=limit_pages
        )

    def run(self, search_term="Potter"):
        self.logger.info(f"Starting Martinus (SK) Playwright crawler. Limit: {self.limit_pages} pages.")
        super().run(search_term=search_term)

if __name__ == "__main__":
    spider = MartinusSkSpider(limit_pages=1)
    spider.run()
