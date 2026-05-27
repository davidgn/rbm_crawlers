from html_search_spider import HTMLSearchSpider

class PaperPlusNzSpider(HTMLSearchSpider):
    """
    Spider for Paper Plus (New Zealand).
    A leading book and stationery retailer in NZ.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Paper Plus",
            base_url="https://www.paperplus.co.nz",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.js-productItem', 
                'title': '.js-product-data', # We'll extract from data-name
                'link': 'a.js-productlink',
                'price': '.js-product-data', # We'll extract from data-price
            },
            territory="New Zealand",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_soup):
        # item_soup is the .js-productItem element
        data_el = item_soup.select_one('.js-product-data')
        if not data_el: return
        
        title = data_el.get('data-name')
        if not title: return
        
        price = data_el.get('data-price')
        isbn = item_soup.get('data-skucode')
        
        link_el = item_soup.select_one('a.js-productlink')
        listing_url = self.base_url + link_el.get('href', '') if link_el else ""

        from models import BookListing
        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=f"NZD {price}" if price else None,
            listing_url=listing_url,
            isbn=isbn
        )
        self.save_item(book)

if __name__ == "__main__":
    spider = PaperPlusNzSpider(limit_pages=1)
    spider.run()
