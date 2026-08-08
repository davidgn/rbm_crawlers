import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class SlwsSlSpider(BaseSpider):
    """
    ASP.NET catalog spider for Sierra Leone Writers Series (slwritersseries.org) —
    Freetown's premier publisher for Sierra Leonean literature, academic research, and history.
    Sierra Leone outbound M-Bag: $43.32 USD / 30 kg to US.
    """
    BASE_URL = "https://slwritersseries.org"
    START_ID = 1001
    END_ID = 1085

    def __init__(self, limit_pages: int = 50):
        super().__init__(platform_name="Sierra Leone Writers Series", territory="Sierra Leone")
        self.limit_pages = limit_pages
        self.session = requests.Session()
        self.session.headers.update({
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        })

    def run(self):
        self.logger.info(f"Starting Sierra Leone Writers Series crawler. ID range {self.START_ID}-{self.END_ID}.")
        
        count = 0
        for item_id in range(self.START_ID, self.END_ID + 1):
            if count >= self.limit_pages:
                break

            url = f"{self.BASE_URL}/Bookdetail/{item_id}.aspx"
            try:
                resp = self.session.get(url, timeout=10)
                if resp.status_code != 200:
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                text_lines = [line.strip() for line in soup.get_text("\n", strip=True).split("\n") if line.strip()]

                if "Go Back" in text_lines:
                    idx = text_lines.index("Go Back")
                    if idx + 2 < len(text_lines):
                        title = text_lines[idx + 1]
                        author = text_lines[idx + 2]

                        if title and len(title) > 2 and title not in ("Copyright", "Login", "Home"):
                            item = BookListing(
                                territory=self.territory,
                                platform=self.platform_name,
                                title=title,
                                author=author if author != "Select Author" else None,
                                price_currency="SLE",
                                listing_url=url,
                                condition="New",
                            )
                            self.save_item(item)
                            count += 1

            except Exception as e:
                self.logger.error(f"Error fetching SLWS item {item_id}: {e}")

        self.logger.info(f"Finished Sierra Leone Writers Series. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Sierra Leone Writers Series bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=20)
    args = parser.parse_args()
    SlwsSlSpider(limit_pages=args.limit_pages).run()
