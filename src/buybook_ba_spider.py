from html_search_spider import HTMLSearchSpider

class BuybookBaSpider(HTMLSearchSpider):
    """Native spider for Buybook (Bosnia and Herzegovina)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Buybook",
            base_url="https://buybook.ba",
            search_path="search?q={query}&page={page}",
            selectors={'container': '.card-wrapper', 'title': 'h3.card__heading a', 'price': '.price-item'},
            territory="Bosnia and Herzegovina",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = BuybookBaSpider()
    spider.run()
