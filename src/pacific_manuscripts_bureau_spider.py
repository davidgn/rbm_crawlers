from html_search_spider import HTMLSearchSpider


class PacificManuscriptsBureauSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Pacific Manuscripts Bureau",
            base_url="https://asiapacific.anu.edu.au/pambu/catalogue/",
            search_path="?q={query}",
            territory="Australia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AUD",
            **kwargs,
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PacificManuscriptsBureauSpider(limit_pages=1, limit_items=5)
    spider.run()
