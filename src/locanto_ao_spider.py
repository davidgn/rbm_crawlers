from nodriver_search_spider import NodriverSearchSpider

class LocantoAoSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_AO", base_url="https://angola.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Angola", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoAoSpider(limit_pages=1).run()
