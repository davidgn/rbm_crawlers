from html_search_spider import HTMLSearchSpider

class KnizhenPazarBgSpider(HTMLSearchSpider):
    """
    Spider for Knizhen Pazar (Bulgaria).
    The largest second-hand bookstore in Bulgaria.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Knizhen Pazar",
            base_url="https://knizhen-pazar.net",
            search_path="books/search?q={query}&page={page}",
            selectors={
                'container': 'div.prl__item', 
                'title': '.prl__title a',
                'link': '.prl__title a',
                'price': '.prl__price',
                'author': '.prl__author a'
            },
            territory="Bulgaria",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = KnizhenPazarBgSpider(limit_pages=1)
    spider.run()
