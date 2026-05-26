from playwright_search_spider import PlaywrightSearchSpider

class KnihobotCzSpider(PlaywrightSearchSpider):
    """
    Spider for Knihobot (Czechia).
    The largest second-hand bookstore in the Czech Republic.
    Uses Playwright for Next.js rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Knihobot",
            base_url="https://knihobot.cz",
            search_path="?s={query}&page={page}",
            selectors={
                'container': 'div[class*="product"]', 
                'title': 'h3, .product__title',
                'link': 'a',
                'price': '.product__price',
            },
            territory="Czechia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = KnihobotCzSpider(limit_pages=1)
    spider.run()
