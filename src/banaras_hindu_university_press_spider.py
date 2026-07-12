from html_search_spider import HTMLSearchSpider

class BanarasHinduUniversityPressSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Banaras Hindu University Press",
            base_url="https://www.bhu.ac.in/Site/UnitHome/1_152_1501_Vedic-Vigyan-Kendra-Published-Books",
            search_path="?q={query}",
            territory="India",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="INR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BanarasHinduUniversityPressSpider(limit_pages=1, limit_items=5)
    spider.run()
