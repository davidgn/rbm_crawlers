from nodriver_search_spider import NodriverSearchSpider

class MalawiLocantoSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_MW", base_url="https://malawi.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Malawi", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MalawiLocantoSpider(limit_pages=1).run()
