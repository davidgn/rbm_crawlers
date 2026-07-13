from html_search_spider import HTMLSearchSpider

class UniversidadeEduardoMondlaneUemSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UniversidadeEduardoMondlaneUEM",
            base_url="https://repositorio.uem.mz/",
            search_path="?q={query}",
            territory="Mozambique",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MZN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UniversidadeEduardoMondlaneUemSpider(limit_pages=1, limit_items=5)
    spider.run()
