from html_search_spider import HTMLSearchSpider

class DangdangSpider(HTMLSearchSpider):
    """
    Spider for 当当网 (Dangdang.com) - One of China's largest B2C retailers.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Dangdang",
            base_url="http://search.dangdang.com",
            search_path="?key={query}&page_index={page}",
            selectors={
                'container': 'li[class*="line"]', 
                'title': 'a[dd_name="单品标题"]',
                'link': 'a[dd_name="单品标题"]',
                'price': '.search_now_price',
                'author': 'a[dd_name="单品作者"]'
            },
            territory="China",
            limit_pages=limit_pages
        )
        self.client.verify = False

if __name__ == "__main__":
    spider = DangdangSpider(limit_pages=1)
    spider.run()
