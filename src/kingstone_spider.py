import argparse
import httpx
from bs4 import BeautifulSoup
import re
from urllib.parse import urljoin
from models import BookListing
from base_spider import BaseSpider

class KingstoneSpider(BaseSpider):
    SEARCH_URL = "https://www.kingstone.com.tw/search/key/{query}/dis/list?"

    def __init__(self, limit_pages=50, limit_items=50):
        super().__init__(platform_name="Kingstone.com.tw", territory="Taiwan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.base_url = "https://www.kingstone.com.tw/"
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, verify=False)
        self.headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36'}

    def run(self):
        self.logger.info("Starting Kingstone search crawler. Limit: %s pages.", self.limit_pages)
        try:
            for query in ("9789573336058", "Harry Potter", "村上春樹"):
                if self.items_scraped >= self.limit_items:
                    break
                self._search(query)
        finally:
            self.client.close()

    def _search(self, query: str):
        target_url = self.SEARCH_URL.format(query=query)
        self.logger.info("Fetching search page: %s", target_url)
        resp = self.client.get(target_url, headers=self.headers)
        resp.raise_for_status()
        soup = BeautifulSoup(resp.text, "html.parser")
        for item in soup.select("li.displayunit"):
            if self.items_scraped >= self.limit_items:
                break
            listing = self._parse_search_item(item)
            if listing:
                self.save_item(listing)

    def _parse_search_item(self, item) -> BookListing | None:
        title_link = item.select_one("h3.pdnamebox a[href]")
        if not title_link:
            return None
        listing_url = urljoin(self.base_url, title_link["href"])
        source_id_match = re.search(r"/basic/([^/?#]+)", listing_url)
        price = self._price(item.get_text(" ", strip=True))

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title_link.get_text(" ", strip=True),
            author=", ".join(a.get_text(" ", strip=True) for a in item.select("span.author a")) or None,
            publisher=self._first_text(item, "span.publish a"),
            category=self._first_text(item, "div.classbox span"),
            condition="New",
            price=price,
            listing_url=listing_url,
            seller_comments=f"Kingstone product id: {source_id_match.group(1)}" if source_id_match else None,
        )

    def _price(self, text: str) -> str | None:
        match = re.search(r"特價\s*([\d,]+)\s*元", text)
        return f"TWD {match.group(1).replace(',', '')}" if match else None

    def _first_text(self, item, selector: str) -> str | None:
        node = item.select_one(selector)
        return node.get_text(" ", strip=True) if node else None

    def _scrape_detail(self, url):
        resp = self.client.get(url, headers=self.headers)
        if resp.status_code != 200:
            return
        
        soup = BeautifulSoup(resp.text, "html.parser")
        
        title = soup.find("h1").text.strip() if soup.find("h1") else "Unknown"
        
        details = {}
        # Parse LI for metadata
        for li in soup.find_all("li"):
            text = li.get_text(separator="|", strip=True)
            if ":" in text:
                parts = text.split(":", 1)
                details[parts[0].strip()] = parts[1].strip()
            elif "ISBN" in text:
                # ISBN is sometimes in the next sibling or text node
                lines = [line.strip() for line in li.get_text().split("\n") if line.strip()]
                if "ISBN" in lines:
                    idx = lines.index("ISBN")
                    if idx + 1 < len(lines):
                        details["ISBN"] = lines[idx+1]

        publisher = details.get("出版社")
        pub_date = details.get("出版日")
        isbn = details.get("ISBN")
        author = details.get("作者")
        
        price = None
        # Look for price tags
        price_tags = soup.find_all(string=re.compile(r"元"))
        for pt in price_tags:
             m = re.search(r"(\d+)\s*元", pt)
             if m:
                 price = "TWD " + m.group(1)
                 break

        listing = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=isbn,
            publisher=publisher,
            publication_year=pub_date.split("/")[0] if pub_date and "/" in pub_date else pub_date,
            price=price,
            listing_url=url,
            condition="New" # Primarily retail
        )
        self.save_item(listing)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    KingstoneSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items or 50,
    ).run()
