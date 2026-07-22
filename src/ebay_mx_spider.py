from html_search_spider import HTMLSearchSpider

class EbayMxSpider(HTMLSearchSpider):
    """Spider for eBay (Mexico)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="eBay Mexico",
            base_url="https://www.ebay.com",
            search_path="sch/i.html?_nkw={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mexico",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = EbayMxSpider()
    spider.run()
