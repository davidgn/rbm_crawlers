import re
import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class LibrosDeGuineaEcuatorialGqSpider(BaseSpider):
    """
    HTML / Catalog spider for Libros de Guinea Ecuatorial
    (librosdeguineaecuatorial.online) — official publisher & digital bookstore
    for Equatorial Guinean literature, political economics, and regional history.
    Equatorial Guinea outbound M-Bag: $132.96 USD / 30 kg to US.
    """
    BASE_URL = "https://librosdeguineaecuatorial.online"

    EXACT_SKIPS = {
        "inicio", "contacto", "biblioteca", "el autor", "impacto",
        "conocimiento soberano", "ejes de investigación", "empieza por aquí",
        "para emprendedores", "para investigadores", "para inversores",
        "¿qué quieres aprender hoy?", "libros de javier clemente engonga™",
        "planos deacción estratégica"
    }

    def __init__(self, limit_pages: int = 5):
        super().__init__(platform_name="Libros de Guinea Ecuatorial", territory="Equatorial Guinea")
        self.limit_pages = limit_pages
        self.headers = {
            "User-Agent": (
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
            ),
            "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        }

    def run(self):
        self.logger.info(f"Starting Libros de Guinea Ecuatorial crawler.")
        
        urls = [
            f"{self.BASE_URL}/biblioteca",
            f"{self.BASE_URL}/",
        ]

        seen_titles = set()

        for url in urls:
            try:
                self.logger.info(f"Fetching {url}")
                resp = requests.get(url, headers=self.headers, timeout=20)
                if resp.status_code != 200:
                    continue

                soup = BeautifulSoup(resp.text, "html.parser")
                headings = soup.find_all(["h1", "h2", "h3", "h4", "h5"])

                for h in headings:
                    title = h.get_text(strip=True)
                    if not title or len(title) < 4:
                        continue

                    if title.lower() in self.EXACT_SKIPS:
                        continue

                    if title in seen_titles:
                        continue
                    seen_titles.add(title)

                    slug = re.sub(r"[^a-z0-9]+", "-", title.lower()).strip("-")
                    item = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        author="Javier Clemente Engonga",
                        price=None,
                        price_currency="XAF",
                        listing_url=f"{url}#{slug}",
                        condition="New",
                    )
                    self.save_item(item)

            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")

        self.logger.info(f"Finished Libros de Guinea Ecuatorial. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Libros de Guinea Ecuatorial bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibrosDeGuineaEcuatorialGqSpider(limit_pages=args.limit_pages).run()
