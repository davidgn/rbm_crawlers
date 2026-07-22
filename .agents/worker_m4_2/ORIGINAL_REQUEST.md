# Worker Task Request — Milestone 4: Custom Standalone Spiders Group 3 (Gen 2)

## Objective
Upgrade 17 custom standalone spiders in Group 3 to the robust extraction standard.

## Target Files (17)
`src/bookpeddler_ng_spider.py`, `src/antqcart_spider.py`, `src/booksmandala_spider.py`, `src/cansell_spider.py`, `src/tiki_vn_spider.py`, `src/maliks_spider.py`, `src/jiushujie_spider.py`, `src/booklal_spider.py`, `src/bookconekt_spider.py`, `src/liberiabookstore_spider.py`, `src/preownedbooks_ng_spider.py`, `src/sellmybooks_spider.py`, `src/bookdaddy_spider.py`, `src/bookle_spider.py`, `src/olx_id_spider.py`, `src/mutanabi_spider.py`, `src/bookflow_spider.py`.

## Requirements
1. Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
2. Ensure explicit separation of numeric `price` and currency token (`price_currency`) when instantiating `BookListing`.
3. Integrate metadata scavenging/extraction where detail pages are scraped.
4. Do NOT modify existing working CSS selectors or pagination parameters.
5. Test and verify all modified files. Document changes and test results in `/opt/repos/rbm_crawlers/.agents/worker_m4_2/handoff.md`.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.
