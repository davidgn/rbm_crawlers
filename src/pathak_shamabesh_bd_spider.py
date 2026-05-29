from playwright_search_spider import PlaywrightSearchSpider

class PathakShamabeshBdSpider(PlaywrightSearchSpider):
    """
    Spider for Pathak Shamabesh (Bangladesh).
    A high-quality retail chain and online platform.
    Uses Playwright to handle modern theme rendering.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Pathak Shamabesh",
            base_url="https://pathakshamabesh.com",
            search_path="?s={query}&post_type=product",
            selectors={
                'container': 'article', 
                'title': 'h2',
                'link': 'a',
                'price': '.text-brand', # Assuming similar theme as Wafilife
            },
            territory="Bangladesh",
            limit_pages=limit_pages
        )

    def run(self, search_term="Potter"):
        self.logger.info(f"Starting Pathak Shamabesh (BD) Playwright crawler. Limit: {self.limit_pages} pages.")
        super().run(search_term=search_term)

if __name__ == "__main__":
    spider = PathakShamabeshBdSpider(limit_pages=1)
    spider.run()
