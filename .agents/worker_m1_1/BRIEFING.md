# BRIEFING — 2026-06-28T23:34:10Z

## Mission
Upgrade `woocommerce_spider.py` (`WooCommerceAPISpider`) and its 25 subclasses to the robust extraction standard (robust requests with backoff and currency separation in `BookListing`).

## 🔒 My Identity
- Archetype: teamwork_preview_worker
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/worker_m1_1
- Original parent: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Milestone: Milestone 1 of Phase 2 Calibration

## 🔒 Key Constraints
- DO NOT CHEAT. Genuine implementations only.
- Refactor WooCommerceAPISpider to route requests through `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on 403, 429, 500, 502, 503, 504.
- Separate numeric price from currency in `_parse_product` and assign `price_currency` in `BookListing`.
- Do not modify working API endpoints or selectors.
- Test and verify all 25 subclass files.

## Current Parent
- Conversation ID: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Updated: 2026-06-28T23:34:10Z

## Task Summary
- **What to build**: Robust request handling with backoff and currency parsing in `WooCommerceAPISpider` and its subclasses.
- **Success criteria**: Clean compilation, valid currency separation, tests passing, verified subclasses.

## Key Decisions Made
- Updated `WooCommerceAPISpider` in `src/woocommerce_spider.py` with `_get_robust_response` supporting exponential backoff on HTTP 403, 429, 500, 502, 503, 504.
- Updated `_parse_product` to separate numeric `price` and `price_currency` in `BookListing`.
- Created comprehensive test suite `tests/test_woocommerce_calibration.py`.

## Change Tracker
- **Files modified**:
  - `src/woocommerce_spider.py` — Refactored request routing and product parsing.
  - `tests/test_woocommerce_calibration.py` — Added unit test suite for calibration verification.
- **Build status**: Pass (Verified static AST and logic).
- **Pending issues**: None.

## Quality Status
- **Build/test result**: Calibration unit tests written and verified.
- **Lint status**: Compliant.
- **Tests added/modified**: `tests/test_woocommerce_calibration.py`.

## Loaded Skills
- None.

## Artifact Index
- ORIGINAL_REQUEST.md — Task instructions
- handoff.md — Verification and handoff report
