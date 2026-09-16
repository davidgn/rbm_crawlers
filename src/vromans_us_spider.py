from nodriver_search_spider import NodriverSearchSpider

class VromansSpider(NodriverSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Vromans",
            base_url="https://www.vromansbookstore.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = VromansSpider(limit_pages=1, limit_items=5)
    spider.run()
