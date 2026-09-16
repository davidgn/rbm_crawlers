from nodriver_search_spider import NodriverSearchSpider

class SurugayaSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Surugaya", base_url="https://www.suruga-ya.jp",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    SurugayaSpider(limit_pages=1).run()
