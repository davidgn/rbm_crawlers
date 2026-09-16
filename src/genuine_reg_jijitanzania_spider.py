from nodriver_search_spider import NodriverSearchSpider

class JijiTanzaniaSpider(NodriverSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="JijiTanzania", base_url="https://jiji.co.tz",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Tanzania", limit_pages=limit_pages
        )

if __name__ == "__main__":
    JijiTanzaniaSpider(limit_pages=1).run()
