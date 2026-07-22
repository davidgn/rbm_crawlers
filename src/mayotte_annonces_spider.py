from html_search_spider import HTMLSearchSpider

class MayotteAnnoncesSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Leboncoin Mayotte",
            base_url="https://www.leboncoin.fr",
            search_path="recherche/?category=27&locations=Mayotte&text={query}",
            territory="Mayotte",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MayotteAnnoncesSpider(limit_pages=1, limit_items=5)
    spider.run()
