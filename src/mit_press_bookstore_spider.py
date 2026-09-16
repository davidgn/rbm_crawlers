from html_search_spider import HTMLSearchSpider

class MitPressBookstoreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="MIT Press Bookstore",
            base_url="https://mitpressbookstore.mit.edu",
            search_path="search/site/{query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

    def run(self, search_term=None):
        # Not actually Akamai-blocked (verified via nodriver 2026-09-16): the site
        # runs Drupal/IndieCommerce, search_path above 404s, and the real search
        # form POSTs to "/" with a CSRF form_build_id/form_token — needs real
        # form interaction (fill + submit), not a GET URL, so it doesn't fit the
        # NodriverSearchSpider get-and-parse pattern. Skipping until that's built.
        self.logger.warning("Requires interactive Drupal/IndieCommerce form submission, not a URL pattern. Skipping.")

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MitPressBookstoreSpider(limit_pages=1, limit_items=5)
    spider.run()

