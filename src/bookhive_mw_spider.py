import requests
from base_spider import BaseSpider
from models import BookListing

class BookHiveMwSpider(BaseSpider):
    """
    Supabase REST-based spider for BookHive (bookhivemw.me) — Malawi's
    book marketplace for physical and digital books.
    Malawi: $147.56 / 30 kg M-Bag to the US (outbound).

    BookHive is a Vercel-hosted SPA backed by Supabase. The public anon key
    is bundled in the client JS and allows read access to approved books.
    """
    SUPABASE_URL = "https://vnqkkhjftoayfwqilaxg.supabase.co"
    ANON_KEY = (
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9."
        "eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZucWtraGpmdG9heWZ3cWlsYXhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzc0NTI4NDMsImV4cCI6MjA5MzAyODg0M30."
        "Md7lo_-WMr_XWddtJJcqgMqRFBqqjNvO8jWHjmBnWvs"
    )

    def __init__(self, limit_pages: int = 100):
        super().__init__(platform_name="BookHive_MW", territory="Malawi")
        self.limit_pages = limit_pages
        self.headers = {
            "apikey": self.ANON_KEY,
            "Authorization": f"Bearer {self.ANON_KEY}",
            "Accept": "application/json"
        }

    def run(self):
        self.logger.info(f"Starting BookHive MW Supabase crawler. Limit: {self.limit_pages} pages.")
        page_size = 20
        for page in range(self.limit_pages):
            offset = page * page_size
            url = (
                f"{self.SUPABASE_URL}/rest/v1/books"
                f"?status=eq.approved&select=*&limit={page_size}&offset={offset}"
            )
            try:
                resp = requests.get(url, headers=self.headers, timeout=20)
                resp.raise_for_status()
                data = resp.json()
            except Exception as e:
                self.logger.error(f"Failed to fetch BookHive Supabase page {page}: {e}")
                break

            if not data:
                self.logger.info(f"No more products on page {page}.")
                break

            for row in data:
                title = row.get("title")
                if not title:
                    continue
                book = BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=row.get("author"),
                    isbn=row.get("isbn"),
                    price=str(row["price"]) if row.get("price") is not None else None,
                    price_currency="MWK",
                    listing_url=f"https://bookhivemw.me/book.html?id={row.get('id')}",
                    condition=row.get("condition") or "New",
                )
                self.save_item(book)

            if len(data) < page_size:
                self.logger.info("Fetched last page.")
                break

        self.logger.info(f"Finished BookHive_MW. Scraped {self.items_scraped} items.")


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="BookHive Malawi Supabase spider")
    parser.add_argument("--limit-pages", type=int, default=100)
    args = parser.parse_args()
    BookHiveMwSpider(limit_pages=args.limit_pages).run()
