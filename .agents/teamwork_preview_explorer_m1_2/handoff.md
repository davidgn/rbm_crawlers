# Handoff Report: Explorer 2 (Milestone 1 — Bosnia Spider: olx_ba_spider.py)

## 1. Observation
- **Codebase Architecture & Existing Spiders**:
  - Found core base class `/opt/repos/rbm_crawlers/src/base_spider.py` implementing cache-first storage (`self.cache_dir`), URL deduplication (`self._seen_urls`), Wikidata QID harmonization (`self.lookup_qid`), and real-time Redis firehose streaming (`oracle_firehose`).
  - Found data model `/opt/repos/rbm_crawlers/src/models.py` defining `BookListing` with explicit fields: `territory`, `platform`, `title`, `author`, `isbn`, `price`, `price_currency`, `qid`, `listing_url`, etc.
  - Examined existing robust networking patterns (`_get_robust_response`) across multiple production spiders, including `/opt/repos/rbm_crawlers/src/loot_spider.py` (lines 53-71), `/opt/repos/rbm_crawlers/src/aladin_spider.py` (lines 69-85), `/opt/repos/rbm_crawlers/src/eslite_tw_spider.py` (lines 39-55), and `/opt/repos/rbm_crawlers/src/nadir_kitap_spider.py` (lines 56-75).
  - Reviewed current Bosnian marketplace definitions in `/opt/repos/rbm_crawlers/src/bosnia_olx_spider.py`, `/opt/repos/rbm_crawlers/src/olx_ba_books_spider.py`, and `/opt/repos/rbm_crawlers/src/buybook_ba_spider.py`.
- **Networking & Resilience Mechanisms**:
  - Spiders implement `_get_robust_response(url, max_retries=3)` featuring:
    1. HTTP status handling: retrying on transient errors (`403`, `429`, `500`, `502`, `503`, `504`) while halting on terminal client errors (`404`, `410`).
    2. Exponential backoff delays (`time.sleep(2 ** attempt)` or random jitter).
    3. Per-request User-Agent rotation from a predefined browser headers pool.
    4. Integration with Playwright stealth (`get_playwright_stealth_config`) when JavaScript client-side rendering or Cloudflare challenges are active.
- **Currency Conventions for Bosnia and Herzegovina**:
  - On Bosnian e-commerce platforms (`olx.ba`, `buybook.ba`), currency displays use the local abbreviation `KM` (Konvertibilna marka). Example strings: `"15 KM"`, `"25,50 KM"`, `"KM 10.00"`.
  - Standardized ISO 4217 currency representation required by `BookListing.price_currency` for Bosnia is `"BAM"`.
- **OLX Bosnia (`olx.ba`) Target Analysis**:
  - Base URL: `https://olx.ba`
  - Books Category Endpoints: `/kategorija/17/literatura-knjige` (or `/pretraga?kategorija=17` / `/pretraga?trazilica=knjige`).
  - Item Detail Signal: `/artikal/{article_id}`.

---

## 2. Logic Chain
1. **Inheritance & Infrastructure Integration**:
   - `BaseSpider` provides mandatory platform logging, JSON Lines output to `/opt/repos/rbm_crawlers/src/data/olx_ba_listings.jsonl`, HTML caching to `/opt/repos/rbm_crawlers/src/cache/olx_ba/`, and QID enrichment.
   - Therefore, `olx_ba_spider.py` must subclass `BaseSpider` (or utilize a specialized subclass wrapper of `ConfigurableMarketplaceSpider`) to maintain platform consistency across all crawlers in `rbm_crawlers`.
2. **Robust Networking Protocol (`_get_robust_response`)**:
   - Web platforms like OLX frequently update bot defense mechanisms (Cloudflare, rate limiters).
   - Implementing `_get_robust_response` inside `olx_ba_spider.py` ensures request resilience by handling transient connection drops and HTTP 429/50x spikes via exponential backoff and rotating user agents.
   - If initial HTTP requests encounter client-side rendering issues or WAF challenges, falling back to Playwright stealth browser contexts guarantees data recovery.
3. **Data Normalization & Currency Conversion**:
   - Raw price strings extracted from `olx.ba` DOM or JSON structures contain `,` as decimal separators and trailing/leading `KM` symbols.
   - To adhere to `models.py`, `olx_ba_spider.py` must parse price strings by converting `,` to `.`, stripping alphabetic/symbolic characters, and assigning `price_currency="BAM"`.
4. **Metadata Scavenging & Edge Case Mitigation**:
   - Classified ads on OLX are user-generated, meaning ISBN, publisher, and edition fields are rarely populated in structured HTML tables.
   - Utilizing `self.scavenge_metadata(description_text, listing)` leverages `signal_scavenger` regex utilities to extract hidden ISBNs and publication dates from raw ad descriptions.
   - Edge cases such as "Po dogovoru" (Upon agreement) or "Besplatno" (Free) must map `price=None` or `price="0.00"` without throwing unhandled parsing exceptions.

---

## 3. Caveats
- **Live Network Probes Restricted**: Investigation was performed via static inspection of existing codebase patterns and structural analysis. Direct live HTTP requests to `olx.ba` were not executed during this step to comply with read-only investigation rules.
- **API Endpoint Evolution**: OLX platforms occasionally migration between REST, GraphQL, and Next.js frontend hydration (`__NEXT_DATA__`). The implementer should verify whether current `olx.ba` responses serve full SSR HTML or embedded JSON hydration blocks upon execution.

---

## 4. Conclusion
The implementation of `olx_ba_spider.py` for Bosnia and Herzegovina (Milestone 1) should follow this structured architectural design:
1. **Class Architecture**: Inherit from `BaseSpider` with `platform_name="OLX_BA"` and `territory="Bosnia and Herzegovina"`.
2. **Resilient Networking**: Incorporate `_get_robust_response` with retry backoff, dynamic User-Agent headers (`bs-BA` Accept-Language preference), and Playwright stealth fallback for JavaScript rendering.
3. **Target Routes**: Crawl `/kategorija/17/literatura-knjige` and extract detail links matching `/artikal/`.
4. **Currency & Data Normalization**: Normalize raw Bosnian prices (e.g. `"25,00 KM"` -> `price="25.00"`, `price_currency="BAM"`).
5. **Enrichment**: Run `scavenge_metadata` on listing descriptions and auto-lookup Wikidata QID.

---

## 5. Verification Method
1. **Codebase Inspection**: Verify `olx_ba_spider.py` resides in `/opt/repos/rbm_crawlers/src/` and inherits from `BaseSpider`.
2. **Execution Test**: Run python execution in single-page test mode:
   `python3 /opt/repos/rbm_crawlers/src/olx_ba_spider.py`
3. **Output Verification**: Inspect the generated JSONL output file `/opt/repos/rbm_crawlers/src/data/olx_ba_listings.jsonl` to confirm:
   - Items contain `platform`: `"OLX_BA"` and `territory`: `"Bosnia and Herzegovina"`.
   - `price_currency` is strictly `"BAM"`.
   - `price` is formatted as a numeric string.
