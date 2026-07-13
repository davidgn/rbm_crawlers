from html_search_spider import HTMLSearchSpider

class InpeNationalInstituteSpaceResearchSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="NationalInstituteforSpaceResearchINPE",
            base_url="http://www.inpe.br/biblioteca/publicacoes.php",
            search_path="?q={query}",
            territory="Brazil",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BRL",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = InpeNationalInstituteSpaceResearchSpider(limit_pages=1, limit_items=5)
    spider.run()
