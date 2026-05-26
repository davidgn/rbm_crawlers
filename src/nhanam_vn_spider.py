from html_search_spider import HTMLSearchSpider

class NhanamVnSpider(HTMLSearchSpider):
    """
    Spider for Nhã Nam (Vietnam).
    Prestigious publisher and online bookstore.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Nha Nam",
            base_url="https://nhanam.vn",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': 'div.proloop', 
                'title': 'h3',
                'link': 'a.image-thumb',
                'price': '.proloop-price',
            },
            territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = NhanamVnSpider(limit_pages=1)
    spider.run()
