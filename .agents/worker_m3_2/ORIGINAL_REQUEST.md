# Worker Task Request — Milestone 3: Custom Standalone Spiders Group 2 (Gen 2)

## Objective
Upgrade 17 custom standalone spiders in Group 2 to the robust extraction standard.

## Target Files (17)
`src/nebrasbooks_spider.py`, `src/camerbookshop_spider.py`, `src/mcit_opac_spider.py`, `src/thebookmarketng_spider.py`, `src/kitapmarket_kz_spider.py`, `src/booksecondstory_spider.py`, `src/askitab_spider.py`, `src/mudah_spider.py`, `src/halfpricedbooks_ke_spider.py`, `src/labouquinerie_sn_spider.py`, `src/bookmamu_spider.py`, `src/booktionary_bd_spider.py`, `src/nibiya_spider.py`, `src/buyzoxs_playwright_spider.py`, `src/qiqi788_spider.py`, `src/kitabi_iraq_spider.py`, `src/myoldbooks_spider.py`.

## Requirements
1. Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
2. Ensure explicit separation of numeric `price` and currency token (`price_currency`) when instantiating `BookListing`.
3. Integrate metadata scavenging/extraction where detail pages are scraped.
4. Do NOT modify existing working CSS selectors or pagination parameters.
5. Test and verify all modified files. Document changes and test results in `/opt/repos/rbm_crawlers/.agents/worker_m3_2/handoff.md`.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.
