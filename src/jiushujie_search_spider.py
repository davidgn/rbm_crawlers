from playwright_search_spider import PlaywrightSearchSpider

class JiushujieSearchSpider(PlaywrightSearchSpider):
    """
    Spider for 旧书街 (jiushujie.com).
    Uses Playwright to handle its AJAX-loaded search results and session protection.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Jiushujie",
            base_url="http://www.jiushujie.com",
            search_path="index.php?m=book&a=search&kw={query}",
            selectors={
                'container': 'ul.sell-list li', 
                'title': '.book-title',
                'link': 'a.book-link',
                'price': '.price',
            },
            territory="China",
            limit_pages=limit_pages
        )

    def run(self, search_term="哈利波特"):
        self.logger.info(f"Starting Jiushujie Playwright Search. Term: {search_term}")
        super().run(search_term=search_term)

if __name__ == "__main__":
    spider = JiushujieSearchSpider(limit_pages=1)
    spider.run()
