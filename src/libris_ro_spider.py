from html_search_spider import HTMLSearchSpider

class LibrisRoSpider(HTMLSearchSpider):
    """
    Spider for Libris (Romania).
    A leading online bookstore in Romania.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Libris Romania",
            base_url="https://www.libris.ro",
            search_path="search?q={query}&pag={page}",
            selectors={
                'container': 'li.produse-grid-item', 
                'title': '.produse-grid-titlu',
                'link': 'a.produse-grid-link',
                'price': '.produse-grid-pret',
            },
            territory="Romania",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = LibrisRoSpider(limit_pages=1)
    spider.run()
