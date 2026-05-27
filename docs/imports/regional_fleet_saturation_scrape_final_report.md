# Regional Fleet Saturation Scrape: Final Documentation

This document serves as the master blueprint and handover guide for the completion of the global Saturation Scrape. Over the course of the expansion phase, the fleet has been extended to provide authoritative coverage across **15 distinct global regions**, harmonizing the crawling, identity, and reconciliation layers into a unified ecosystem.

## 1. Global Fleet Coverage (Achieved)

The expansion prioritized underserved and high-friction regions, utilizing a mix of standard DOM parsing, Headless/Playwright execution, and API ingestion to bypass WAFs and regional blocks.

| Region | Primary Targets Secured | Notes / Bypass Strategy |
| :--- | :--- | :--- |
| **Sub-Saharan Africa (West/Central)** | `preownedbooks-ng`, `cityreads-gh`, `begglire-sn`, `gabonlivre-ga` | Heavy reliance on Shopify/WooCommerce API extraction and Next.js hydration data to bypass low-bandwidth timeouts. |
| **Sub-Saharan Africa (South)** | `exclusivebooks-za`, `bookworldzambia-zm`, `houseofbookszim-zw`, `namibiabooks-na` | Combination of AJAX API reversal and localized DOM scraping. |
| **MENA / West Asia** | 10+ targets across SA, AE, SY, PS, LY, IQ, IR | Used `curl_cffi` to bypass Salla platform fingerprinting (Saudi Arabia) and handled Farsi/Arabic localized DOMs. |
| **East Asia** | `kongfz-cn`, `dangdang-cn`, `honto-jp` | **High Friction:** `Kongfz.com` (China) required Playwright-based rendering and localized UTF-8 queries (`哈利波特`) to bypass advanced bot protection. |
| **Southeast Asia** | `bookurve-my`, `bookxcess-my`, `bukukita-id`, `bookshelf-ph`, `thryft-sg` | Leveraged `script#web-pixels-manager-setup` JSON extraction (BookXcess) and `__NEXT_DATA__` (Bookurve). `curl_cffi` used for `Bukukita` (Indonesia) to handle TLS handshakes. |
| **Oceania** | `angusrobertson-au`, `qbd-au`, `bookhero-nz`, `whitcoulls-nz` | `Whitcoulls` required massive `window.category` script extraction due to complex client-side rendering. |
| **Eastern Europe** | `knihobot-cz`, `carturesti-ro`, `raamatukoi-ee`, `knizhenpazar-bg`, `mybook-lv` | Fixed localized path routing (`/otsing` vs `/search`) and deployed Playwright for JavaScript-heavy Romanian targets. |
| **South America** | `buscalibre-br`, `buscalibre-cl` | Extracted structural item data via HTML parsing across regional subdomains. |
| **Nordics** | `bookis-no` | Bypassed strict Cloudflare Turnstile blocks using internal Next.js build IDs (`_next/data/...`). |
| **Caucasus / Central Asia** | `books-ge`, `uzum-uz`, `kitap-kz`, `price-books-kg` | Bypassed regional TLS drops using specific `impersonate` headers and GraphQL reversals (Uzum). |
| **South Asia** | `bookchor-in`, `rokomari-bd`, `libertybooks-pk`, `daraz-bd` | Extensive use of mobile API endpoints and `PlaywrightSearchSpider` to render heavy React interfaces. |

## 2. Technical Architecture & Bypass Strategies

The core architecture (`BaseSpider`) was significantly enhanced to handle the variance in global platforms. Codex should adhere to the following established patterns when addressing the remaining "triage" platforms.

### A. Next.js Hydration Extraction
Instead of parsing the DOM, many modern sites (e.g., Bookurve, Bookis) store the complete product data in a JSON blob.
**Pattern:**
```python
selectors={'container': 'script#__NEXT_DATA__'}
# Inside _parse_item:
data = json.loads(item_soup.string)
results = data.get('props', {}).get('pageProps', {}) # Traverse to products
```

### B. Shopify Pixel Manager Extraction
When `products.json` is blocked (403 Forbidden), Shopify stores emit product data to their analytics tracker.
**Pattern:**
```python
selectors={'container': 'script#web-pixels-manager-setup'}
# Inside _parse_item:
match = re.search(r'\"events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
events_json_str = codecs.decode(match.group(1), 'unicode_escape')
events_data = json.loads(events_json_str)
# Filter for 'search_submitted' or 'page_viewed'
```

### C. Advanced TLS & WAF Bypass (`curl_cffi`)
For sites that drop connections (e.g., Bukukita, Salla platforms in Saudi Arabia), the standard `requests` or `httpx` libraries will fail (`_ssl.c:1012: The handshake operation timed out`).
**Pattern:** Override `_fetch_page` in the spider to use `curl_cffi`:
```python
from curl_cffi import requests as curlex
r = curlex.get(url, impersonate="chrome110", timeout=30, verify=False)
```

### D. Playwright DOM Rendering
When data is fetched asynchronously via protected XHRs (e.g., Kongfz.com), use the `PlaywrightSearchSpider` base class. It handles anti-bot arguments and waits for specific selectors to appear in the DOM before extracting.

## 3. Global Synchronization State

The three primary repositories are now synchronized and cross-linked:

1.  **`unipress-parser-crawler-family` (Identity DB):**
    *   `unipress_site_definitions.db` contains 2,610+ validated targets.
    *   All new expansion targets are marked as `verified_functional`.
2.  **`rbm_crawlers` (Crawling Engine):**
    *   Houses 50+ regional spiders inheriting from `HTMLSearchSpider`, `PlaywrightSearchSpider`, `WooCommerceAPISpider`, and `ShopifyAPISpider`.
    *   All spiders are configured to dump `_listings.jsonl` files for restart-safe caching.
3.  **`openrefine-reconciliation-service` (Reconciliation Hub):**
    *   The `lib/reconcile_dispatch.py` acts as the master router.
    *   Dedicated regional strategy files (e.g., `strategies_rbm_sea_expansion.py`, `strategies_rbm_oceania.py`) map OpenRefine queries back to the specific extraction logic.

## 4. Handover to Codex

The "Saturation Scrape" is structurally complete. The core architecture is hardened, and the geographical spread covers all critical global markets. 

**Next Steps for Codex / Future Agents:**
1.  **Triage Targets:** Several targets in the DB remain in `verified_triage` status (e.g., *Chung Hwa Book Co* in HK, *7788* in China, *BeninMarketPlace*). These require custom session-handling, captcha-solving, or login flows.
2.  **Long-Running Execution:** The spiders are designed for headless batch execution. Deploy the fleet via the scheduler (`reconcile_dispatch.py`) against the massive ISBN lot (`massive_international_exhaustive.csv`).
3.  **Data Ingestion:** Route the resulting `.jsonl` artifacts into the OpenRefine cluster for final entity deduplication.
