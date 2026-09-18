import argparse
import asyncio
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from isbn_utils import extract_isbn, isbn_from_url
from models import BookListing
from base_spider import BaseSpider
import nodriver as uc


class KoshoSpider(BaseSpider):
    """
    日本の古本屋 / kosho.or.jp — Japan main-universe antiquarian marketplace.
    Re-written to use nodriver to bypass AWS WAF Challenge.
    """

    BASE_URL = "https://www.kosho.or.jp"

    def __init__(self, limit_pages=1, limit_items=None):
        super().__init__(platform_name="日本の古本屋", territory="Japan")
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        self.logger.info("Starting 日本の古本屋 harvest via nodriver.")
        
        browser = await uc.start()
        try:
            page = await browser.get(self.BASE_URL)
            await asyncio.sleep(8)
            html = await page.get_content()
            
            soup = BeautifulSoup(html, "html.parser")
            seen = set()
            links = []
            for a in soup.find_all("a", href=True):
                href = urljoin(self.BASE_URL, a["href"])
                if "product_id=" in href and href not in seen:
                    links.append(href)
                    seen.add(href)
                    
            self.logger.info(f"Found {len(links)} links on homepage.")
            
            for i, link in enumerate(links):
                if i >= self.limit_pages * 5:  # just scrape a few
                    break
                if self.limit_items is not None and self.items_scraped >= self.limit_items:
                    break
                self.logger.info(f"Harvesting: {link}")
                await page.get(link)
                await asyncio.sleep(5)
                item_html = await page.get_content()
                
                soup = BeautifulSoup(item_html, "html.parser")
                h1 = soup.find("h1")
                title = h1.get_text(strip=True) if h1 else None

                isbn = extract_isbn(soup) or isbn_from_url(link)

                author = publisher = price = condition = edition = None
                for row in soup.select("table.item-spec tr, dl.item-spec dt, div.item-spec"):
                    label_el = row.find("th") or row
                    value_el = row.find("td")
                    if not label_el or not value_el:
                        continue
                    label = label_el.get_text(strip=True).lower()
                    value = value_el.get_text(" ", strip=True)
                    if "著者" in label or "author" in label:
                        author = value or None
                    elif "出版社" in label or "publisher" in label:
                        publisher = value or None
                    elif "価格" in label or "price" in label:
                        price = value or None
                    elif "状態" in label or "condition" in label:
                        condition = value or None

                self.save_item(BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title or "Untitled kosho listing",
                    author=author,
                    publisher=publisher,
                    isbn=isbn,
                    price=price,
                    condition=condition,
                    listing_url=link,
                ))

        except Exception as e:
            self.logger.error(f"Error during crawl: {e}")
        finally:
            browser.stop()
            
        self.logger.info(f"Finished. {self.items_scraped} items cached.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()
    KoshoSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
