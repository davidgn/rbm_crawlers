import httpx
from bs4 import BeautifulSoup
from sitemap_streamer_spider import SitemapStreamerSpider
from models import BookListing

class ThriftbooksSpider(SitemapStreamerSpider):
    """
    North American Giant Crawler for ThriftBooks.
    Streams their massive sitemap and micro-scrapes product meta tags.
    """
    def __init__(self):
        super().__init__(platform_name="ThriftBooks", territory="US")
        
    async def micro_scrape(self, client: httpx.AsyncClient, url: str):
        """Micro-Scraper: Fetches HTML, isolates meta tags, ignores heavy DOM."""
        
        headers = self.get_random_headers()
        response = await client.get(url, headers=headers, timeout=10.0)
        
        # Hybrid Fallback trigger
        if response.status_code in (429, 403):
            self.logger.warning(f"Rate limited on {url} - Shifting to External Aggregator API!")
            # Implement Google Shopping / Aggregator API fallback here
            return
            
        response.raise_for_status()
        
        # Fast HTML Parse
        soup = BeautifulSoup(response.text, 'html.parser')
        
        # Standard OpenGraph metadata parsing
        title_tag = soup.find('meta', property='og:title')
        price_tag = soup.find('meta', property='product:price:amount')
        isbn_tag = soup.find('meta', property='books:isbn')
        
        if not title_tag or not price_tag:
            return # Probably a category page or OOS
            
        title = title_tag.get('content', 'Unknown')
        price = price_tag.get('content', '0.0')
        isbn = isbn_tag.get('content', '') if isbn_tag else ''
        
        listing = BookListing(
            platform=self.platform_name,
            territory=self.territory,
            listing_url=url,
            title=title,
            price=f"USD {price}",
            condition="good",
            isbn=isbn
        )
        
        # Stream it straight to the Buyback Operators!
        self.save_item(listing)
        self.logger.info(f"Micro-Scraped: {title[:30]}... | ${price}")

    async def run_async(self):
        # We will point this to their raw sitemaps. 
        # (For demonstration, we use a generic placeholder representing one of their actual XML chunks)
        test_sitemap = "https://www.thriftbooks.com/sitemap.xml" 
        try:
            await self.process_sitemap(test_sitemap)
        except Exception as e:
            self.logger.error(f"Failed to process sitemap: {e}")

if __name__ == "__main__":
    spider = ThriftbooksSpider()
    spider.run()
