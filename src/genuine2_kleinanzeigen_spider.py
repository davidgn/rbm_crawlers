from nodriver_search_spider import NodriverSearchSpider

class KleinanzeigenSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Kleinanzeigen", base_url="https://kleinanzeigen.de",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Germany", limit_pages=limit_pages
        )

if __name__ == "__main__":
    KleinanzeigenSpider(limit_pages=1).run()
