from html_search_spider import HTMLSearchSpider

class BookhouseKgSpider(HTMLSearchSpider):
    """
    Spider for BookHouse.kg (Kyrgyzstan).
    Modern online bookstore in Kyrgyzstan.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BookHouse.kg",
            base_url="https://bookhouse.kg",
            search_path="ru/search/?q={query}&page={page}",
            selectors={
                'container': '.book-inner-slide', 
                'title': '.book_title',
                'link': 'a',
                'price': '.price',
            },
            territory="Kyrgyzstan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookhouseKgSpider(limit_pages=1)
    spider.run()
