from html_search_spider import HTMLSearchSpider

class AddisSouqEtSpider(HTMLSearchSpider):
    """Spider for Addis Souq Ethiopia."""
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="AddisSouq_ET",
            base_url="https://addissouq.com",
            search_path="ads/search?q={query}&page={page}",
            selectors={'container': '.ad-box', 'title': '.ad-title', 'price': '.ad-price'}, 
            territory="Ethiopia",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    spider = AddisSouqEtSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
