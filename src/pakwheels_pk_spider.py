from html_search_spider import HTMLSearchSpider

class PakwheelsPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="pakwheels_pk", base_url="https://www.pakwheels.com",
            search_path="used-cars/search/-/?q={query}",
            selectors={'container': 'div.search-listing', 'title': 'h3 a', 'price': 'div.price-details', 'link': 'h3 a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    PakwheelsPkSpider(limit_pages=1).run()
