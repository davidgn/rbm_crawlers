from html_search_spider import HTMLSearchSpider

class YouluSpider(HTMLSearchSpider):
    """
    Spider for 有路网 (Youlu.net) - A major Chinese second-hand book marketplace.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Youlu",
            base_url="https://www.youlu.net",
            search_path="search/check/?bookName={query}",
            selectors={
                'container': 'div.book-item', 
                'title': '.book-name a',
                'link': '.book-name a',
                'price': '.price',
                'author': '.author',
            },
            territory="China",
            limit_pages=limit_pages
        )
        self.client.verify = False

if __name__ == "__main__":
    spider = YouluSpider(limit_pages=1)
    spider.run()
