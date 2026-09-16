from nodriver_search_spider import NodriverSearchSpider

class MicronesiaLocantoSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_FM", base_url="https://micronesia.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Micronesia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    MicronesiaLocantoSpider(limit_pages=1).run()
