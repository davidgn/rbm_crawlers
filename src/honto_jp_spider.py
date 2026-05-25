from html_search_spider import HTMLSearchSpider

class HontoJpSpider(HTMLSearchSpider):
    """
    Spider for Honto.jp (Japan).
    The online portal for Junkudo, Maruzen, and Bunkyodo.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Honto",
            base_url="https://honto.jp",
            search_path="netstore/search.html?k={query}&pg={page}",
            selectors={
                'container': '.stContents', 
                'title': '.stHeading a',
                'link': '.stHeading a',
                'price': '.stPrice',
            },
            territory="Japan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = HontoJpSpider(limit_pages=1)
    spider.run()
