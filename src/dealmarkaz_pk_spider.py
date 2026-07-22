from html_search_spider import HTMLSearchSpider

class DealmarkazPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="dealmarkaz_pk", base_url="https://dealmarkaz.pk",
            search_path="search?q={query}",
            selectors={'container': 'div.ad-listing', 'title': 'h3.ad-title', 'price': 'span.ad-price', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DealmarkazPkSpider(limit_pages=1).run()
