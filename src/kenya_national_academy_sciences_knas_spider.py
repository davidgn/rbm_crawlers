from html_search_spider import HTMLSearchSpider

class KenyaNationalAcademySciencesKnasSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="KenyaNationalAcademyofSciencesKNAS",
            base_url="https://www.knas.or.ke/",
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
    spider = KenyaNationalAcademySciencesKnasSpider(limit_pages=1, limit_items=5)
    spider.run()
