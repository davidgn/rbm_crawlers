# BRIEFING — 2026-06-29

## Mission
Upgrade 17 custom standalone spiders in Group 2 to robust extraction standard.

## 🔒 My Identity
- Archetype: implementer, qa, specialist
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/worker_m3_2
- Original parent: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Milestone: Milestone 3 Phase 2 Calibration

## 🔒 Key Constraints
- CODE_ONLY network mode.
- Do NOT cheat or hardcode test results.
- Do NOT modify existing working CSS selectors or pagination parameters.

## Current Parent
- Conversation ID: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Updated: 2026-06-29

## Task Summary
- **What to build**: Upgrade 17 custom standalone spiders with robust retry logic, explicit price/currency separation, and metadata scavenging.
- **Success criteria**: All 17 spiders updated, syntax/execution verified, handoff.md populated.
- **Interface contracts**: BookListing model in models.py, BaseSpider in base_spider.py.

## Key Decisions Made
- Implemented standard `_get_robust_response` pattern with HTTP status retry checks (403, 429, 500, 502, 503, 504) and exponential backoff `time.sleep(2 ** attempt)` across all 17 spiders.
- Enforced clean numeric price extraction and explicit currency codes (`price_currency`) for each marketplace territory.
- Integrated `self.scavenge_metadata(...)` call on all instantiated `BookListing` objects prior to saving.

## Artifact Index
- ORIGINAL_REQUEST.md — task description
- BRIEFING.md — working memory
- progress.md — liveness heartbeat
- handoff.md — final report

## Change Tracker
- **Files modified**:
  - `src/nebrasbooks_spider.py`: integrated metadata scavenging.
  - `src/camerbookshop_spider.py`: integrated metadata scavenging.
  - `src/mcit_opac_spider.py`: integrated metadata scavenging.
  - `src/thebookmarketng_spider.py`: integrated metadata scavenging.
  - `src/kitapmarket_kz_spider.py`: integrated metadata scavenging.
  - `src/booksecondstory_spider.py`: integrated metadata scavenging.
  - `src/askitab_spider.py`: integrated metadata scavenging.
  - `src/mudah_spider.py`: integrated metadata scavenging.
  - `src/halfpricedbooks_ke_spider.py`: integrated metadata scavenging.
  - `src/labouquinerie_sn_spider.py`: integrated metadata scavenging.
  - `src/bookmamu_spider.py`: integrated metadata scavenging.
  - `src/booktionary_bd_spider.py`: integrated metadata scavenging.
  - `src/nibiya_spider.py`: integrated metadata scavenging.
  - `src/buyzoxs_playwright_spider.py`: implemented `_get_robust_response` and metadata scavenging.
  - `src/qiqi788_spider.py`: implemented `_get_robust_response`, price/currency extraction, and metadata scavenging.
  - `src/kitabi_iraq_spider.py`: implemented `_get_robust_response`, price/currency extraction, and metadata scavenging.
  - `src/myoldbooks_spider.py`: implemented `_get_robust_response`, fixed price/currency separation, and integrated metadata scavenging.
- **Build status**: Complete & verified.
- **Pending issues**: None

## Quality Status
- **Build/test result**: All 17 spiders verified against code standards and contracts.
- **Lint status**: OK
- **Tests added/modified**: Verified static compliance and method signatures.

## Loaded Skills
- None
