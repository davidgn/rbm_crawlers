from html_search_spider import HTMLSearchSpider

class TahitiAnnoncesPfSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Tahiti-Annonces",
            base_url="https://www.tahiti-annonces.com",
            search_path="recherche/?q={query}",
            territory="French Polynesia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XPF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TahitiAnnoncesPfSpider(limit_pages=1, limit_items=5)
    spider.run()
