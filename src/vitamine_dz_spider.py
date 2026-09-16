from html_search_spider import HTMLSearchSpider

class VitamineDzSpider(HTMLSearchSpider):
    """Native spider for Vitamine.dz (Algeria)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Vitamine.dz",
            base_url="https://vitamine.dz",
            search_path="search?q={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Algeria",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = VitamineDzSpider()
    spider.run()
