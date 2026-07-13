from html_search_spider import HTMLSearchSpider

class AnSinhaInstituteSocialStudiesAnsissSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="ANSinhaInstituteofSocialStudiesANSISS",
            base_url="https://ansiss.res.in/",
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
    spider = AnSinhaInstituteSocialStudiesAnsissSpider(limit_pages=1, limit_items=5)
    spider.run()
