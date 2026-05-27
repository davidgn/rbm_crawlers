import argparse
import re
from urllib.parse import urljoin

from html_search_spider import HTMLSearchSpider
from models import BookListing

class ChunghwaHkSpider(HTMLSearchSpider):
    """
    Spider for Chung Hwa Book Co (Hong Kong).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Chung Hwa",
            base_url="https://www.chunghwabook.com.hk",
            search_path="book/index/page/{page}",
            selectors={
                'container': 'div.item[href*="/book/detail/"]',
                'title': 'p.name',
                'link': 'a[href*="/book/detail/"]',
                'author': 'p.author',
            },
            territory="Hong Kong",
            limit_pages=limit_pages,
            limit_items=limit_items,
        )
        self.client.verify = False # Bypass SSL issue

    def _parse_item(self, item_soup):
        title_el = item_soup.select_one(self.selectors["title"])
        link_el = item_soup.select_one(self.selectors["link"])
        if not title_el or not link_el or not link_el.has_attr("href"):
            return

        listing_url = urljoin(self.base_url, link_el["href"])
        author_el = item_soup.select_one(self.selectors["author"])
        detail = self._detail_fields(listing_url)
        title = detail.get("title") or title_el.get_text(" ", strip=True)

        self.save_item(
            BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=detail.get("author") or (author_el.get_text(" ", strip=True) if author_el else None),
                isbn=detail.get("isbn"),
                publisher=detail.get("publisher"),
                publication_year=detail.get("publication_year"),
                pages=detail.get("pages"),
                category=detail.get("category"),
                price=detail.get("price"),
                listing_url=listing_url,
            )
        )

    def _detail_fields(self, url: str) -> dict[str, str]:
        try:
            response = self.client.get(url, headers=self.get_random_headers(), timeout=10)
        except Exception as exc:
            self.logger.debug("Detail fetch failed for %s: %s", url, exc)
            return {}
        if response.status_code != 200 or len(response.text) < 500:
            return {}

        item_id = re.sub(r"[^a-zA-Z0-9_-]+", "_", url).strip("_")[:100]
        self.cache_html(item_id, response.text, url=url)

        from bs4 import BeautifulSoup

        soup = BeautifulSoup(response.text, "html.parser")
        info = soup.select_one(".book-info")
        if not info:
            return {}
        text = info.get_text(" ", strip=True)

        def pick(label: str, next_labels: tuple[str, ...]) -> str | None:
            tail = text.split(label, 1)[1] if label in text else ""
            if not tail:
                return None
            end = len(tail)
            for next_label in next_labels:
                idx = tail.find(next_label)
                if idx >= 0:
                    end = min(end, idx)
            value = tail[:end].strip()
            return value or None

        labels = ("作者", "出版商", "叢書系列", "出版日期", "分類", "可購買版本", "定價", "ISBN", "頁數")
        title = soup.select_one(".book-name")
        return {
            "title": title.get_text(" ", strip=True) if title else None,
            "author": pick("作者", labels[1:]),
            "publisher": pick("出版商", labels[2:]),
            "publication_year": pick("出版日期", labels[4:]),
            "category": pick("分類", labels[5:]),
            "price": pick("定價", labels[7:]),
            "isbn": pick("ISBN", labels[8:]),
            "pages": pick("頁數", ()),
        }

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Chung Hwa Book Co Hong Kong search spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    spider = ChunghwaHkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()
