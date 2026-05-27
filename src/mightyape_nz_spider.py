from playwright_search_spider import PlaywrightSearchSpider

class MightyApeNzSpider(PlaywrightSearchSpider):
    """
    Spider for Mighty Ape (New Zealand).
    Uses Playwright to solve the Cloudflare challenge and extract data from the React interface.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Mighty Ape",
            base_url="https://www.mightyape.co.nz",
            search_path="search?q={query}&category=2&page={page}",
            selectors={
                'container': '.product-list .item', 
                'title': '.title a',
                'link': '.title a',
                'price': '.price',
            },
            territory="New Zealand",
            limit_pages=limit_pages
        )

    def run(self):
        # We override run to ensure enough wait time for the challenge
        self.logger.info(f"Starting Mighty Ape (NZ) Playwright crawler. Limit: {self.limit_pages} pages.")
        super().run(search_term="Potter")

if __name__ == "__main__":
    spider = MightyApeNzSpider(limit_pages=1)
    spider.run()
