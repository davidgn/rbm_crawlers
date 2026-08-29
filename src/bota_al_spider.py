from html_search_spider import HTMLSearchSpider

class BotaELibritSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bota e Librit",
            base_url="https://botaelibrit.al",
            search_path="search?q={query}",
            territory="Albania",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ALL",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BotaELibritSpider(limit_pages=1, limit_items=5)
    spider.run()
