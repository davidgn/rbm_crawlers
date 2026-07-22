import argparse
import asyncio
import httpx
import re
from base_api_spider import BaseAPISpider

class GonvillMxSpider(BaseAPISpider):
    """
    Spider for Gonvill (Mexico).
    Cross-pollinated from the buyback-operators repository.
    Extracts prices from HTML list views.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(platform_name="Gonvill", territory="Mexico")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.search_url = "https://www.gonvill.com.mx/busqueda/listaLibros.php"
        
    async def run_async(self):
        self.logger.info(f"Starting Gonvill MX Spider (Pages: {self.limit_pages})")
        items_scraped = 0
        
        async with httpx.AsyncClient() as client:
            for page in range(1, self.limit_pages + 1):
                if self.limit_items and items_scraped >= self.limit_items:
                    break
                    
                self.logger.info(f"Fetching page {page}...")
                try:
                    resp = await client.get(
                        self.search_url,
                        params={"tipoArticulo": "L1", "pag": page},
                        headers=self.get_random_headers(),
                        timeout=20.0
                    )
                    resp.raise_for_status()
                    html = resp.text
                except Exception as e:
                    self.logger.error(f"Error fetching page {page}: {e}")
                    break
                    
                if "no hay resultados" in html.lower():
                    self.logger.info("End of catalog reached.")
                    break
                    
                blocks = re.findall(
                    r'(<dl[^>]*dublincore[^>]*>.*?</dl>\s*<div class="botones">.*?</div>)',
                    html, re.DOTALL | re.IGNORECASE,
                )
                
                if not blocks:
                    self.logger.warning(f"No blocks found on page {page}")
                    break
                    
                for block in blocks:
                    if self.limit_items and items_scraped >= self.limit_items:
                        break
                        
                    avail = re.search(r'class="disponibilidad[^"]*">([^<]+)', block)
                    if avail and "stock" not in avail.group(1).lower():
                        continue
                        
                    price_m = re.search(r'class="precio"[^>]*>\s*\$\s*([\d,]+(?:\.\d{2})?)', block)
                    if not price_m:
                        continue
                        
                    price = float(price_m.group(1).replace(",", ""))
                    if price <= 0:
                        continue
                        
                    # We extract ISBN from image URL or link if possible
                    url_m = re.search(r'href="(/libro/[^"]+)"', block)
                    url = f"https://www.gonvill.com.mx{url_m.group(1)}" if url_m else "https://www.gonvill.com.mx"
                    
                    # Usually ISBN is in the cover image URL or a specific tag
                    isbn_m = re.search(r'isbn[^0-9]*(97\d{11})', block, re.IGNORECASE)
                    if not isbn_m:
                        # Fallback to looking for any 13-digit number starting with 97
                        isbn_m = re.search(r'(97[89]\d{10})', block)
                        
                    if not isbn_m:
                        continue
                        
                    isbn = isbn_m.group(1)
                    
                    title_m = re.search(r'class="title">.*?>([^<]+)<', block)
                    title = title_m.group(1).strip() if title_m else None
                    
                    self.process_listing(
                        isbn=isbn,
                        price=price,
                        currency="MXN",
                        url=url,
                        title=title
                    )
                    items_scraped += 1
                
                await asyncio.sleep(1) # Polite delay
                
        self.logger.info(f"Gonvill spider completed. Scraped {items_scraped} items.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Gonvill MX Spider")
    parser.add_argument("--limit", type=int, default=1)
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    args = parser.parse_args()
    
    GonvillMxSpider(
        limit_pages=args.limit_pages or args.limit,
        limit_items=args.limit_items,
    ).run()
