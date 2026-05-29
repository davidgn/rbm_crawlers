from playwright_search_spider import PlaywrightSearchSpider

class WafilifeBdSpider(PlaywrightSearchSpider):
    """
    Spider for Wafilife (Bangladesh).
    Specializes in Islamic books and general literature.
    Uses Playwright to handle Next.js rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Wafilife",
            base_url="https://www.wafilife.com",
            search_path="?s={query}&post_type=product",
            selectors={
                'container': 'article', 
                'title': 'h2',
                'link': 'a',
                'price': '.text-brand', # Based on sample HTML: text-brand contains the price like ২০০৳
            },
            territory="Bangladesh",
            limit_pages=limit_pages
        )

    def run(self, search_term="Potter"):
        self.logger.info(f"Starting Wafilife (BD) Playwright crawler. Limit: {self.limit_pages} pages.")
        super().run(search_term=search_term)

if __name__ == "__main__":
    spider = WafilifeBdSpider(limit_pages=1)
    spider.run()
