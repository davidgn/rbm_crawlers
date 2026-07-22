# Handoff Report — Bosnia OLX Spider Analysis & Implementation Plan (`olx_ba_spider.py`)

## 1. Observation

Direct investigation of the repository structure and cached artifacts revealed the following exact files, configurations, and data structures:

* **Existing Spiders**:
  - `/opt/repos/rbm_crawlers/src/bosnia_olx_spider.py` (Lines 4–11): Inherits from `HTMLSearchSpider` with obsolete selectors `selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'}`, unformatted search path `search?q={search_term}`, territory `"Bosnia"`, and missing explicit BAM currency code.
  - `/opt/repos/rbm_crawlers/src/olx_ba_books_spider.py` (Lines 4–14): Uses `MarketplaceConfig` with `browse_paths=("/pretraga?trazilica=knjige", "/kategorija/17/literatura-knjige")`, `detail_signals=("/artikal/",)`, `rendered=True`, and `render_wait_ms=4000`.
* **Repository Architecture & Standards**:
  - `/opt/repos/rbm_crawlers/PROJECT.md` (Lines 16–21): Spiders must yield `BookListing` instances with numerical floats for `price` and ISO currency strings for `price_currency` (`"BAM"` for Bosnia).
  - `/opt/repos/rbm_crawlers/src/models.py` (Lines 5–25): `BookListing` schema definition containing `title`, `author`, `isbn`, `publisher`, `price`, `price_currency`, `listing_url`, `territory`, and `platform`.
* **Cached HTML Structure for `olx.ba`**:
  - Search Page (`/opt/repos/rbm_crawlers/src/cache/olx bosnia books/index_olx_ba__pretraga_trazilica_knjige.html`, Line 534): Item containers are wrapped in `<div class="w-full flex cardd">` or `<div class="bg-white rounded-5 listing-card ...">` with links formatted as `<a href="/artikal/76600106">`.
  - Detail Page JSON-LD (`/opt/repos/rbm_crawlers/src/cache/olx bosnia books/olx_ba__artikal_76600106.html`, Line 11): Contains full SSR JSON-LD structured data in `<script data-n-head="ssr" type="application/ld+json">`:
    ```json
    {
      "@context": "https://schema.org/",
      "@type": "Product",
      "name": "Kada telo kaže ne - Gabor Mate",
      "offers": {
        "@type": "Offer",
        "url": "https://olx.ba/artikal/76600106",
        "priceCurrency": "BAM",
        "price": 23
      }
    }
    ```
  - Detail Page Meta & ISBN (`/opt/repos/rbm_crawlers/src/cache/olx bosnia books/olx_ba__artikal_76600106.html`, Line 11 description): Description HTML contains structured book metadata: `<li><strong>ISBN: </strong>9788660361051</li>`.

---

## 2. Logic Chain

1. **Observation**: `bosnia_olx_spider.py` relies on basic CSS selectors (`div.item`, `h3`, `.price`) and a generic search path `search?q={search_term}`.
   **Deduction**: Modern `olx.ba` uses a Nuxt/Vue frontend where search results are rendered inside cards (`div.cardd` / `div.listing-card`) with detail paths matching `/artikal/{id}`. `bosnia_olx_spider.py` will fail to match containers or extract valid fields in its current state.
2. **Observation**: `olx.ba` detail pages embed schema.org `Product` JSON-LD data in SSR HTML.
   **Deduction**: Parsing JSON-LD in detail pages gives 100% accurate, clean extractions for `name` (title), `price` (numerical float), `priceCurrency` (`"BAM"`), and `url`.
3. **Observation**: Book detail descriptions contain explicit HTML tags for ISBN (`<li><strong>ISBN: </strong>9788660361051</li>`).
   **Deduction**: RegEx targeting `ISBN:\s*<\/strong>\s*(\d{10,13})` or `isbn_utils.extract_isbn` on the description text will consistently extract ISBNs.
4. **Observation**: `PROJECT.md` requires standardized currency strings and co-located spider architecture.
   **Deduction**: The upgraded `olx_ba_spider.py` should consolidate legacy logic, adopt Playwright or robust HTTP client fetching, enforce `price_currency="BAM"`, and register cleanly under `platform_name="OLX_BA"`.

---

## 3. Caveats

* **Anti-Bot Defenses**: `olx.ba` utilizes Cloudflare and InMobi CMP scripts. Static `requests` calls may encounter HTTP 403 blocks in live environments; `curl_cffi` browser impersonation (`chrome110`) or `PlaywrightSearchSpider` is recommended for live crawling.
* **Metadata Availability**: While ISBN and detailed specs are available for well-cataloged books, user-posted secondhand listings on C2C marketplaces may omit ISBNs or publishers. The extraction logic must gracefully handle missing fields (`None`).
* **Duplicate Spider Files**: Both `bosnia_olx_spider.py` and `olx_ba_books_spider.py` exist in `src/`. For Milestone 1 / implementation, these should be unified into `olx_ba_spider.py` (or `bosnia_olx_spider.py` refactored and aliased) to eliminate duplication.

---

## 4. Conclusion & Recommended Implementation Plan

### Recommended Implementation Strategy (`olx_ba_spider.py`)
Upgrade the Bosnia OLX spider to inherit from `PlaywrightSearchSpider` or `HTMLSearchSpider` with a two-pass / JSON-LD extraction approach:

1. **Search Query & URL Formulation**:
   - Base URL: `https://olx.ba`
   - Search Path: `pretraga?q={query}` (or fallback category browse `/kategorija/17/literatura-knjige`).
   - Pagination: `pretraga?q={query}&page={page}`
2. **Listing Container Selectors**:
   - Container selector: `div.cardd, div.listing-card`
   - Link pattern: `a[href*="/artikal/"]`
3. **Field Extraction Logic**:
   - **Title**: Extract from JSON-LD `Product.name` or fallback `<meta property="og:title">`.
   - **Price**: Extract from JSON-LD `offers.price` or fallback regex `(\d+(?:\.\d+)?)\s*KM`.
   - **Currency Code**: Strictly set to `"BAM"` (derived directly from JSON-LD `offers.priceCurrency`).
   - **URL**: Absolute URL `https://olx.ba/artikal/{id}`.
   - **ISBN**: Extracted from JSON-LD `description` using regex `r'ISBN:\s*(?:<\/strong>)?\s*(97[89]\d{10}|\d{9}[\dX])'` or `isbn_utils.extract_isbn`.
   - **Publisher**: Extracted from title/description if present.

### Proposed Code Patch / Implementation Sketch
```python
import json
import re
from bs4 import BeautifulSoup
from html_search_spider import HTMLSearchSpider
from models import BookListing
from isbn_utils import extract_isbn

class OlxBASpider(HTMLSearchSpider):
    def __init__(self, search_term: str = "knjige", limit_pages: int = 5, limit_items: int | None = None):
        super().__init__(
            platform_name="OLX_BA",
            territory="Bosnia and Herzegovina",
            base_url="https://olx.ba",
            search_path="pretraga?q={query}&page={page}",
            price_currency="BAM",
            limit_pages=limit_pages,
            limit_items=limit_items,
            selectors={'container': 'div.cardd, div.listing-card', 'title': 'h3', 'price': '.price'}
        )

    def parse_detail_page(self, html: str, url: str) -> BookListing | None:
        soup = BeautifulSoup(html, "html.parser")
        json_ld = soup.find("script", type="application/ld+json")
        title, price, currency, isbn, description = None, None, "BAM", None, ""
        
        if json_ld and json_ld.string:
            try:
                data = json.loads(json_ld.string)
                if data.get("@type") == "Product":
                    title = data.get("name")
                    description = data.get("description", "")
                    offers = data.get("offers", {})
                    price = str(offers.get("price")) if offers.get("price") else None
                    currency = offers.get("priceCurrency", "BAM")
            except Exception:
                pass
                
        if not title:
            og_title = soup.find("meta", property="og:title")
            title = og_title["content"] if og_title else ""
            
        if description:
            isbn = extract_isbn(description)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title or "Unknown Title",
            price=price,
            price_currency=currency,
            isbn=isbn,
            listing_url=url
        )
```

---

## 5. Verification Method

To verify this implementation plan independently:

1. **Inspect Cached Artifacts**:
   ```bash
   python3 -c '
   from bs4 import BeautifulSoup
   import json
   with open("src/cache/olx bosnia books/olx_ba__artikal_76600106.html") as f:
       soup = BeautifulSoup(f.read(), "html.parser")
       data = json.loads(soup.find("script", type="application/ld+json").string)
       print("Title:", data.get("name"))
       print("Price:", data["offers"]["price"], data["offers"]["priceCurrency"])
   '
   ```
   *Expected Output*: `Title: Kada telo kaže ne - Gabor Mate`, `Price: 23 BAM`.

2. **Verify Invalidation Conditions**:
   - If `olx.ba` deprecates JSON-LD tags, fallback regex parsing on OpenGraph meta tags (`og:title`, `og:description`) and DOM elements must trigger automatically.
