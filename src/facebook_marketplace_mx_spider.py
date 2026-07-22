from html_search_spider import HTMLSearchSpider

class FacebookMarketplaceMxSpider(HTMLSearchSpider):
    """Spider for Facebook Marketplace (Mexico)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Facebook Marketplace",
            base_url="https://www.facebook.com/marketplace",
            search_path="search/?query={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mexico",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = FacebookMarketplaceMxSpider()
    spider.run()
