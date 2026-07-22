from html_search_spider import HTMLSearchSpider

class KongfzMacaoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Kongfz (Macao sellers)",
            base_url="https://search.kongfz.com",
            search_path="product_result/?key={query}&area=macao",
            territory="Macao",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CNY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KongfzMacaoSpider(limit_pages=1, limit_items=5)
    spider.run()
