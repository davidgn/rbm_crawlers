import logging
from typing import List
import requests
from base_spider import BaseSpider


class NaiinApiSpider(BaseSpider):
    """Discovery scaffold for the Naiin Android API.

    This intentionally does not emit listings yet. Promote it only after the
    API search/product schemas are confirmed from static or live evidence.
    """

    def __init__(self):
        super().__init__(platform_name="NaiinAPI", territory="Thailand")
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
    logging.basicConfig(level=logging.INFO)
    NaiinApiSpider().run()
