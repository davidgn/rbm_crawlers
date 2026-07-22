from html_search_spider import HTMLSearchSpider

class McgillUniversityBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="McGill University Bookstore (Le James)",
            base_url="https://mcgillcampusstore.ca",
            search_path="search?keyword={query}",
            selectors={
                'container': 'a.prodc-link',
                'title': '.field--name-title',
                'price': '.price',
            },
            territory="Canada",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CAD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = McgillUniversityBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()

