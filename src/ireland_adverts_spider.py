from nodriver_search_spider import NodriverSearchSpider

class IrelandAdvertsSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Adverts_IE", base_url="https://www.adverts.ie",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ireland", limit_pages=limit_pages
        )

if __name__ == "__main__":
    IrelandAdvertsSpider(limit_pages=1).run()
