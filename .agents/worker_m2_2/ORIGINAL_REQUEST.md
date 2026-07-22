# Worker Task Request — Milestone 2: Custom Standalone Spiders Group 1 (Gen 2)

## Objective
Upgrade 17 custom standalone spiders in Group 1 to the robust extraction standard.

## Target Files (17)
`src/abebooks_uk_spider.py`, `src/abebooks_de_spider.py`, `src/abebooks_it_spider.py`, `src/agapea_es_spider.py`, `src/alib_ru_spider.py`, `src/auc_egypt_spider.py`, `src/bookends_ae_spider.py`, `src/bookshuffle_spider.py`, `src/buchfreund_spider.py`, `src/nadir_kitap_spider.py`, `src/taaze_spider.py`, `src/loot_spider.py`, `src/eslite_tw_spider.py`, `src/bookswap_lk_spider.py`, `src/metabook_spider.py`, `src/usedbooksfactory_spider.py`, `src/lapanaf_spider.py`.

## Requirements
1. Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
2. Ensure explicit separation of numeric `price` and currency token (`price_currency`) when instantiating `BookListing`.
3. Integrate metadata scavenging/extraction where detail pages are scraped.
4. Do NOT modify existing working CSS selectors or pagination parameters.
5. Test and verify all modified files. Document changes and test results in `/opt/repos/rbm_crawlers/.agents/worker_m2_2/handoff.md`.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.
