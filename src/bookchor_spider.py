from playwright_search_spider import PlaywrightSearchSpider

class BookChorSpider(PlaywrightSearchSpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="BookChor",
            base_url="https://www.bookchor.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': 'div.cf-column', 
                'title': 'h3.book-title',
                'link': 'a.book-link',
                'price': '.price, .selling-price',
                'author': '.author'
            },
            territory="India",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookChorSpider(limit_pages=2)
    spider.run()
