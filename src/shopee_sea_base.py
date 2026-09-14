import random
import asyncio
import nodriver as uc
from models import BookListing
from base_spider import BaseSpider

class ShopeeSeaSpider(BaseSpider):
    def __init__(
        self,
        platform_name: str,
        territory: str,
        base_url: str,
        search_query: str,
        limit_pages: int = 5,
        limit_items: int = 10,
    ):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url
        self.search_query = search_query
        self.limit_pages = limit_pages
        self.limit_items = limit_items

    def run(self):
        asyncio.run(self._run_async())

    async def _run_async(self):
        self.logger.info(f"Starting {self.platform_name} Enhanced Crawler (nodriver). Query: {self.search_query}")
        
        browser = await uc.start()
        try:
            page = await browser.get("about:blank")
            search_url = f"{self.base_url}/search?keyword={self.search_query.replace(' ', '%20')}"
            self.logger.info(f"Loading search page: {search_url}")
            
            await page.get(search_url)
            await asyncio.sleep(random.randint(5, 8))
            
            html = await page.get_content()
            if "Robot Check" in html or "verify you are human" in html.lower():
                self.logger.error("Blocked by Robot Check.")
                return

            urls = []
            for current_page in range(self.limit_pages):
                self.logger.info(f"Collecting links from page {current_page + 1}...")
                
                # Scroll a bit
                for _ in range(3):
                    await page.scroll_down(300)
                    await asyncio.sleep(1)
                
                # We need to evaluate JS to get hrefs because nodriver DOM query can be tricky
                links = await page.evaluate("""
                    () => {
                        let hrefs = [];
                        document.querySelectorAll("a").forEach(a => {
                            if (a.href && a.href.includes("-i.")) {
                                hrefs.push(a.href);
                            }
                        });
                        return hrefs;
                    }
                """)
                
                for href in links:
                    if href.startswith("/"):
                        href = self.base_url + href
                    if href not in urls and href not in self._seen_urls:
                        urls.append(href)
                        if len(urls) >= self.limit_items:
                            break
                
                self.logger.info(f"Total unique URLs found: {len(urls)}")
                if len(urls) >= self.limit_items:
                    break
                    
                # We will just scrape one page for now since Shopee is aggressive
                break

            self.logger.info(f"Deep crawling {len(urls)} listings.")
            for url in urls[: self.limit_items]:
                await self._harvest_listing(url, page)
                await asyncio.sleep(random.randint(3, 5))
                
        except Exception as e:
            self.logger.error(f"Crawl error: {e}")
        finally:
            browser.stop()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    async def _harvest_listing(self, url, page):
        try:
            await page.get(url)
            await asyncio.sleep(random.randint(4, 6))
            html = await page.get_content()
            
            data = await page.evaluate("""
                () => {
                    const getText = sel => (document.querySelector(sel) || {}).textContent || "";
                    return {
                        title: getText(".V_P9_7, ._3g8H9a, .att_n-, h1").trim(),
                        price: getText(".pqTWkA, ._3n5NQx, .G2747_").trim(),
                        description: getText(".f_79S0, .product-detail__description, ._2u69s8").trim()
                    };
                }
            """)
            
            title = data.get("title")
            if not title:
                title = "Unknown Title"
                
            price = data.get("price")
            desc = data.get("description")

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=url,
                seller_comments=desc
            )
            
            item = self.scavenge_metadata(html, item)
            if desc:
                item = self.scavenge_metadata(desc, item)

            self.save_item(item)
            self.cache_html(url.split(".")[-1][:50], html, url=url)
            
        except Exception as e:
            self.logger.error(f"Error detail page {url}: {e}")

