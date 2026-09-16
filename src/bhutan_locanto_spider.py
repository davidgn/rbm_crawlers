from nodriver_search_spider import NodriverSearchSpider

class BhutanLocantoSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_BT", base_url="https://bhutan.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Bhutan", limit_pages=limit_pages
        )

if __name__ == "__main__":
    BhutanLocantoSpider(limit_pages=1).run()
