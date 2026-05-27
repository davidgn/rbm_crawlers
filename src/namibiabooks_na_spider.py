from html_search_spider import HTMLSearchSpider

class NamibiaBooksSpider(HTMLSearchSpider):
    """
    Spider for Namibia Book Market.
    The primary online bookstore for Namibian publications.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Namibia Book Market",
            base_url="https://www.namibiabooks.com",
            search_path="index.php/shop-online/search?q={query}&page={page}",
            selectors={
                'container': '.product, .item', 
                'title': 'h3, .title, a',
                'link': 'a',
                'price': '.price',
            },
            territory="Namibia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = NamibiaBooksSpider(limit_pages=1)
    spider.run()
