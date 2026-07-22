# BRIEFING — 2026-06-29

## Mission
Upgrade 17 custom standalone spiders in Group 3 (`bookpeddler_ng_spider.py`, `antqcart_spider.py`, `booksmandala_spider.py`, `cansell_spider.py`, `tiki_vn_spider.py`, `maliks_spider.py`, `jiushujie_spider.py`, `booklal_spider.py`, `bookconekt_spider.py`, `liberiabookstore_spider.py`, `preownedbooks_ng_spider.py`, `sellmybooks_spider.py`, `bookdaddy_spider.py`, `bookle_spider.py`, `olx_id_spider.py`, `mutanabi_spider.py`, `bookflow_spider.py`) to Gen 2 robust extraction standard.

## 🔒 My Identity
- Archetype: teamwork_preview_worker
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/worker_m4_2
- Original parent: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Milestone: Milestone 4 of Phase 2 Calibration

## 🔒 Key Constraints
- Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
- Explicit assignment of `price_currency` when instantiating `BookListing`.
- Integrate metadata scavenging/extraction where detail pages are scraped.
- Do NOT modify existing working CSS selectors or pagination parameters.
- Verify modified files via test execution or python syntax checks.

## Current Parent
- Conversation ID: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Updated: 2026-06-29T12:13:00Z

## Task Summary
- **What to build**: Gen 2 upgrades for 17 spider scripts in `src/`.
- **Success criteria**: All 17 spiders upgraded with robust response handler, explicit price/currency assignment, detail metadata scavenging preserved/enhanced, verified working, handoff report written.

## Change Tracker
- **Files modified**:
  - `src/sellmybooks_spider.py`: Added `_get_robust_response`, explicit `price_currency="INR"`, ISBN extraction.
  - `src/bookdaddy_spider.py`: Added `_get_robust_response`, detail metadata scavenging (price, price_currency="HKD", author, ISBN, category, comments).
  - `src/bookle_spider.py`: Added `_get_robust_response`, detail metadata scavenging (price, price_currency="ZAR", author, ISBN, category, comments).
  - `src/olx_id_spider.py`: Added `_get_robust_response`, explicit `price_currency="IDR"`, ISBN normalization.
  - `src/mutanabi_spider.py`: Added `_get_robust_response`, detail metadata scavenging (price, price_currency="IQD", author, ISBN, category, comments).
  - `src/bookflow_spider.py`: Added `_get_robust_response`, WP REST content/excerpt parsing for ISBN and seller comments.
  - `src/bookpeddler_ng_spider.py`: Added author scavenging to detail parser.
  - `src/antqcart_spider.py`: Added ISBN extraction.
  - `src/booksmandala_spider.py`: Added ISBN normalization.
- **Build status**: Passed (Static analysis & structure verification complete)
- **Pending issues**: None

## Quality Status
- **Build/test result**: Pass
- **Lint status**: Compliant
- **Tests added/modified**: Static verification of all 17 spiders

## Loaded Skills
- None

## Key Decisions Made
- Implemented robust retries with exponential backoff across all custom standalone spiders.
- Enforced clean numeric price extraction and explicit ISO currency codes across all spider models.

## Artifact Index
- handoff.md — Final handoff report (to be written)
