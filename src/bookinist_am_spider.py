from html_search_spider import HTMLSearchSpider

class BookinistAmSpider(HTMLSearchSpider):
    """
    Spider for Bookinist (Armenia) - books.am.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bookinist",
            territory="Armenia"
        )
        self.base_url = "https://www.books.am"
        self.search_path = "am/catalogsearch/result/?q={query}"
        self.selectors = {
            'container': '.info_block', 
            'title': '.product_name a',
            'link': '.product_name a',
            'price': '.block_price',
            'author': '.product_author'
        }
        self.limit_pages = limit_pages


if __name__ == "__main__":
    spider = BookinistAmSpider(limit_pages=1)
    spider.run()
