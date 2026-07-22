from html_search_spider import HTMLSearchSpider

class AdjunglePkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="adjungle_pk", base_url="https://adjungle.pk",
            search_path="search?query={query}",
            selectors={'container': 'div.listing-item', 'title': 'h3.title', 'price': 'span.price', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AdjunglePkSpider(limit_pages=1).run()
