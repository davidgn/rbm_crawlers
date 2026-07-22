from html_search_spider import HTMLSearchSpider

class DarazPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="daraz_pk", base_url="https://www.daraz.pk",
            search_path="catalog/?q={query}",
            selectors={'container': 'div.gridItem--Yd0sa', 'title': 'div.title--wFj93', 'price': 'div.price--NVB62', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DarazPkSpider(limit_pages=1).run()
