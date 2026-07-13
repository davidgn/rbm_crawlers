from html_search_spider import HTMLSearchSpider

class AphrcAfricanPopulationHealthResearchCenterSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="AfricanPopulationandHealthResearchCenterAPHRC",
            base_url="https://aphrc.org/publication-type/books-and-monographs/",
            search_path="?q={query}",
            territory="Kenya",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KES",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AphrcAfricanPopulationHealthResearchCenterSpider(limit_pages=1, limit_items=5)
    spider.run()
