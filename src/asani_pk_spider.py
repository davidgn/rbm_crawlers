from html_search_spider import HTMLSearchSpider

class AsaniPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="asani_pk", base_url="https://asani.com.pk",
            search_path="search?q={query}",
            selectors={'container': 'div.item', 'title': 'h2.item-title', 'price': 'div.item-price', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AsaniPkSpider(limit_pages=1).run()
