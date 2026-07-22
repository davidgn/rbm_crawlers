from html_search_spider import HTMLSearchSpider

class AnnoncesNcSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Annonces.nc",
            base_url="https://www.annonces.nc",
            search_path="recherche?q={query}",
            territory="New Caledonia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XPF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AnnoncesNcSpider(limit_pages=1, limit_items=5)
    spider.run()
