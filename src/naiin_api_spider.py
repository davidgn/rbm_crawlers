import logging
from typing import List
import requests
from base_spider import BaseSpider


class NaiinApiSpider(BaseSpider):
    """Discovery scaffold for the Naiin Android API.

    This intentionally does not emit listings yet. Promote it only after the
    API search/product schemas are confirmed from static or live evidence.
    """

    def __init__(self, limit_pages=5, limit_items=None):
        super().__init__(platform_name="NaiinAPI", territory="Thailand")
        self.limit_pages = limit_pages  # unused: scaffold does not paginate yet
        self.limit_items = limit_items  # unused: scaffold emits no listings yet
        self.base_url = "https://app-api.naiin.com/api/v1"
        self.headers = {
            "X-App-Key": "fmrGUjGLzVMf1r8fwzWLzWhgpRyEtgcL",
            "Accept": "application/json",
            "User-Agent": "NaiinReader/0.1.5 (Android 35)",
            "X-Platform": "android",
            "X-App-Version": "0.1.5"
        }

    def run(self):
        self.logger.info("Starting Naiin API discovery...")
        categories = self.get_categories()
        if not categories:
            self.logger.error("Failed to fetch categories. Authentication might be required.")
            return

        self.logger.info(f"Found {len(categories)} categories.")
        # Further implementation depends on cracking the 'books' or 'search' endpoint requirements

    def get_categories(self) -> List[dict]:
        url = f"{self.base_url}/categories"
        try:
            resp = requests.get(url, headers=self.headers, timeout=10)
            if resp.status_code == 200:
                return resp.json().get("rows", [])
        except Exception as e:
            self.logger.error(f"Error fetching categories: {e}")
        return []

if __name__ == "__main__":
    import argparse
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    NaiinApiSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
