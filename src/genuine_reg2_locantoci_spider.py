from nodriver_search_spider import NodriverSearchSpider

class LocantoCISpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LocantoCI", base_url="https://www.locanto.ci",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Ivory Coast", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoCISpider(limit_pages=1).run()
