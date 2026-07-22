from html_search_spider import HTMLSearchSpider

class HellopkPkSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="hellopk_pk", base_url="https://hellopk.com",
            search_path="search?q={query}",
            selectors={'container': 'div.listing', 'title': 'div.title', 'price': 'div.price', 'link': 'a'}, territory="Pakistan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    HellopkPkSpider(limit_pages=1).run()
