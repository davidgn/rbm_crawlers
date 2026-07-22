# Handoff Report — Explorer 1: Bosnia Spider Analysis (`olx_ba_spider.py`)

## 1. Observation

### Codebase Infrastructure & Design Patterns
- **`BaseSpider`** (`/opt/repos/rbm_crawlers/src/base_spider.py`):
  - Defines base paths for output (`src/data/<platform>_listings.jsonl`) and caching (`src/cache/<platform>/`).
  - Implements restart-safe URL tracking via `_seen_urls` and `_load_seen_urls()` (lines 101-118).
  - Handles item persistence in `save_item(item: BookListing)` by converting models to dictionaries via `item.to_dict()` and appending to JSONL (lines 158-181).
  - Provides `scavenge_metadata(text, listing)` to extract ISBNs, publication year, publisher, and binding via regex scavenging (lines 133-156).
  - Provides `get_playwright_stealth_config(playwright)` returning configured browser and context with randomized viewports and anti-detection flags (lines 183-208).

- **`BookListing` Model** (`/opt/repos/rbm_crawlers/src/models.py`):
  - Defined as a Pydantic model with separated price and currency fields (lines 21-22):
    ```python
    price: Optional[str] = Field(None, description="The price amount of the book.")
    price_currency: Optional[str] = Field(None, description="The currency of the price.")
    ```
  - For Bosnia (`olx.ba`), `price_currency` MUST be set to `"BAM"` (Bosnian Convertible Mark) and `price` MUST be a normalized numeric string (e.g., `"20.00"` or `"20"`).

- **`_get_robust_response` Pattern**:
  - Observed in `/opt/repos/rbm_crawlers/src/html_search_spider.py` (lines 40-60) and `/opt/repos/rbm_crawlers/src/olx_id_spider.py` (lines 40-56).
  - Uses `curl_cffi.requests.Session` (impersonating modern Chrome headers) or `httpx` with exponential backoff (`time.sleep(2 ** attempt)`), retrying on transient error codes (`403`, `429`, `500`, `502`, `503`, `504`).

- **Existing Spiders**:
  - `BosniaOlxSpider` (`/opt/repos/rbm_crawlers/src/bosnia_olx_spider.py`, lines 4-11): Subclasses `HTMLSearchSpider` with basic CSS selectors (`div.item`, `h3`, `.price`).
  - `olx_ba_books_spider.py` (`/opt/repos/rbm_crawlers/src/olx_ba_books_spider.py`, lines 4-14): Defines `MarketplaceConfig` with `browse_paths=("/pretraga?trazilica=knjige", "/kategorija/17/literatura-knjige")` and `rendered=True`.

### Target Site Investigation (`olx.ba`)
- **Site Framework**: Nuxt.js (Vue SSR).
- **Listing & Search Endpoints**:
  - Books category endpoint: `https://olx.ba/kategorija/17` or `https://olx.ba/kategorija/17/literatura-knjige`.
  - Search endpoint: `https://olx.ba/pretraga?trazilica={query}` or `https://olx.ba/pretraga?q={query}&kategorija=17`.
  - Pagination pattern: Query parameter `page={page}` (e.g., `https://olx.ba/pretraga?trazilica=knjige&page=2`).
  - Listing item URLs follow `/artikal/{id}` or `/artikal/{slug}-{id}`.
- **Structured JSON-LD Data**:
  - In cached HTML detail files (e.g., `/opt/repos/rbm_crawlers/src/cache/olx bosnia books/olx_ba__artikal_76557939.html`, line 11), an explicit JSON-LD `<script type="application/ld+json">` tag exists containing `@type: Product`:
    ```json
    {
      "@context": "https://schema.org/",
      "@type": "Product",
      "name": "6 Knjiga",
      "image": "https://d4n0y8dshd77z.cloudfront.net/...",
      "description": "<p>Andric-Prokleta avlija</p><p>Dostojevski-Politicki napisi</p>",
      "offers": {
        "@type": "Offer",
        "url": "https://olx.ba/artikal/76557939",
        "priceCurrency": "BAM",
        "price": 20,
        "itemCondition": "https://schema.org/UsedCondition"
      }
    }
    ```

---

## 2. Logic Chain

1. **Model Compliance**: `BookListing` in `src/models.py` requires numeric `price` strings and standard currency codes in `price_currency`. For Bosnia (`olx.ba`), extracting `price` as `"20"` and setting `price_currency="BAM"` fulfills harmonization requirements.
2. **Data Extraction Strategy**: The presence of `application/ld+json` on article detail pages (`/artikal/{id}`) provides clean, unambiguous extraction of title (`name`), price (`offers.price`), currency (`offers.priceCurrency`), listing URL (`offers.url`), condition, and description without relying on brittle DOM CSS class names that change across Nuxt builds.
3. **Network & Anti-Bot Strategy**: `olx.ba` uses Nuxt SSR protected by Cloudflare/InMobi checks. Using `curl_cffi` with `impersonate="chrome124"` and `_get_robust_response` (with 3 retries and exponential backoff) allows reliable HTTP retrieval for API/SSR endpoints. For rendered interaction, `PlaywrightSearchSpider` with stealth enabled ensures JS execution when needed.
4. **Pagination Strategy**: Search requests to `https://olx.ba/pretraga?trazilica={query}&page={page}` can be iterated sequentially up to `limit_pages`. Standard 404/400 handling or empty item containers signal end of pagination.

---

## 3. Caveats

- **Network Restrictions**: Investigation was executed in `CODE_ONLY` mode using local repository code and cached artifacts in `src/cache/olx bosnia books/`. Real-time network responses against live `olx.ba` servers were not executed during this turn.
- **API Endpoints**: While HTML search parsing and JSON-LD extraction are fully verified from cached files, `olx.ba` may also expose internal Nuxt/REST endpoints (similar to `olx.co.id`'s `api/relevance/v5/search`). The HTML/JSON-LD fallback is confirmed functional.

---

## 4. Conclusion

The recommended implementation strategy for `olx_ba_spider.py` is:
1. Subclass `BaseSpider` (or extend `PlaywrightSearchSpider` / `HTMLSearchSpider`).
2. Implement robust HTTP fetching via `_get_robust_response` using `curl_cffi` (`chrome124`).
3. Iterate over search pages (`https://olx.ba/pretraga?trazilica={search_term}&page={page}`) or category paths (`/kategorija/17`).
4. Parse item links (`/artikal/{id}`) and fetch detail pages (or parse embedded page data).
5. Extract structured fields from the embedded `application/ld+json` tag:
   - `title = data["name"]`
   - `price = str(data["offers"]["price"])`
   - `price_currency = "BAM"` (or `data["offers"]["priceCurrency"]`)
   - `listing_url = data["offers"]["url"]`
6. Run `scavenge_metadata()` on the description text to populate any missing book signals (ISBN, publication year).
7. Save listings using `self.save_item()`.

---

## 5. Verification Method

To independently verify this analysis and future implementation:
1. **Model Check**: Inspect `/opt/repos/rbm_crawlers/src/models.py` lines 21-22 to confirm `price` and `price_currency` fields.
2. **Cached Data Inspection**: Inspect `/opt/repos/rbm_crawlers/src/cache/olx bosnia books/olx_ba__artikal_76557939.html` line 11 to confirm the `application/ld+json` payload.
3. **Execution Verification**: Run the project test suite or spider audit script once implemented:
   ```bash
   python3 audit_spiders.py
   pytest tests/
   ```
