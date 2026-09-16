from nodriver_search_spider import NodriverSearchSpider

class GuineabissauAfribabaSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_GW", base_url="https://gw.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Guinea-Bissau", limit_pages=limit_pages
        )

if __name__ == "__main__":
    GuineabissauAfribabaSpider(limit_pages=1).run()
