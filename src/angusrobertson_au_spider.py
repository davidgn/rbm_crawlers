import json
from html_search_spider import HTMLSearchSpider
from models import BookListing

class AngusRobertsonAuSpider(HTMLSearchSpider):
    """
    Spider for Angus & Robertson (Australia).
    An iconic Australian book retailer.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Angus & Robertson",
            base_url="https://www.angusrobertson.com.au",
            search_path="search.ep?keywords={query}&page={page}",
            selectors={'container': '.productItem', 'title': 'unused'},
            territory="Australia",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        data_json = item_soup.get('data-product-data')
        if not data_json:
            return
            
        try:
            data = json.loads(data_json)
            title = data.get('name')
            if not title: return
            
            author = data.get('brand')
            price = data.get('price')
            
            link_el = item_soup.select_one('a[title]')
            listing_url = self.base_url + link_el.get('href', '') if link_el else ""

            book = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                price=price,
                listing_url=listing_url,
            )
            self.save_item(book)
        except Exception as e:
            self.logger.error(f"Failed to parse A&R JSON: {e}")

if __name__ == "__main__":
    spider = AngusRobertsonAuSpider(limit_pages=1)
    spider.run()
