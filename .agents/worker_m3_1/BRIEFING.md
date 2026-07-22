# BRIEFING — 2026-06-28T23:29:00Z

## Mission
Milestone 3 of Phase 2 Calibration: Upgrade 17 custom standalone spiders in Group 2 to the robust extraction standard.

## 🔒 My Identity
- Archetype: teamwork_preview_worker
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/worker_m3_1
- Original parent: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Milestone: Milestone 3 of Phase 2 Calibration (Group 2 Standalone Spiders Upgrade)

## 🔒 Key Constraints
- DO NOT CHEAT: All implementations must be genuine, maintain real state, produce real behavior, no hardcoding.
- Minimal change principle when editing.
- Follow PROJECT.md interface contracts.
- Write to own folder only; report files in handoff.

## Current Parent
- Conversation ID: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Updated: 2026-06-28T23:29:00Z

## Task Summary
- **What to build**: Upgrade 17 custom standalone spiders (`nebrasbooks_spider.py`, `camerbookshop_spider.py`, `mcit_opac_spider.py`, `thebookmarketng_spider.py`, `kitapmarket_kz_spider.py`, `booksecondstory_spider.py`, `askitab_spider.py`, `mudah_spider.py`, `halfpricedbooks_ke_spider.py`, `labouquinerie_sn_spider.py`, `bookmamu_spider.py`, `booktionary_bd_spider.py`, `nibiya_spider.py`, `buyzoxs_playwright_spider.py`, `qiqi788_spider.py`, `kitabi_iraq_spider.py`, `myoldbooks_spider.py`).
- **Requirements**:
  1. Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
  2. Ensure explicit separation of numeric `price` and currency token (`price_currency`) when instantiating `BookListing`.
  3. Integrate metadata scavenging/extraction where detail pages are scraped.
  4. Do NOT modify existing working CSS selectors or pagination parameters.
- **Success criteria**: All 17 spiders pass verification, syntax checks, and conform to schema.

## Change Tracker
- **Files modified**: TBD
- **Build status**: TBD
- **Pending issues**: TBD

## Quality Status
- **Build/test result**: TBD
- **Lint status**: TBD
- **Tests added/modified**: TBD

## Loaded Skills
- None loaded.

## Key Decisions Made
- [Initial] Target 17 custom standalone spiders for exponential backoff retry mechanism and clean price/currency decoupling.

## Artifact Index
- `/opt/repos/rbm_crawlers/.agents/worker_m3_1/ORIGINAL_REQUEST.md` — Agent request log
- `/opt/repos/rbm_crawlers/.agents/worker_m3_1/changes.md` — Modifications list
- `/opt/repos/rbm_crawlers/.agents/worker_m3_1/handoff.md` — Handoff report
