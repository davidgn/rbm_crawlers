from playwright_search_spider import PlaywrightSearchSpider

class KongfzSpider(PlaywrightSearchSpider):
    """
    Spider for 孔夫子旧书网 (Kongfz.com) - China's largest used book marketplace.
    Uses Playwright to handle its complex frontend and anti-bot measures.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kongfz",
            base_url="https://search.kongfz.com",
            search_path="product_result/?key={query}",
            selectors={
                'container': 'div.item-info-box', 
                'title': '.item-name a',
                'link': '.item-name a',
                'price': '.price',
                'author': '.zl-info-value'
            },
            territory="China",
            limit_pages=limit_pages
        )

    def run(self):
        self.logger.info("Starting Kongfz Enhanced Playwright Crawler.")
        super().run(search_term="哈利波特")

if __name__ == "__main__":
    spider = KongfzSpider(limit_pages=1)
    spider.run()
