from html_search_spider import HTMLSearchSpider

class LocantoIdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="locanto_id", base_url="https://www.locanto.id",
            search_path="search/?query={query}",
            selectors={'container': 'div.bp_item', 'title': 'h3.text-body', 'price': 'div.price', 'link': 'a'}, territory="Indonesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoIdSpider(limit_pages=1).run()
