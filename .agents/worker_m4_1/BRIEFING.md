# BRIEFING — 2026-06-28T23:28:12Z

## Mission
Upgrade 17 custom standalone spiders in Group 3 to the robust extraction standard in rbm_crawlers.

## 🔒 My Identity
- Archetype: teamwork_preview_worker
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/worker_m4_1
- Original parent: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Milestone: Milestone 4

## 🔒 Key Constraints
- Implement `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes 403, 429, 500, 502, 503, 504.
- Ensure explicit separation of numeric `price` and currency token (`price_currency`) when instantiating `BookListing`.
- Integrate metadata scavenging/extraction where detail pages are scraped.
- Do NOT modify existing working CSS selectors or pagination parameters.
- Test and verify all modified files. Document changes and test results in `/opt/repos/rbm_crawlers/.agents/worker_m4_1/handoff.md`.

## Current Parent
- Conversation ID: 16daf15b-e95a-4097-8c75-e2d56ac06f0e
- Updated: not yet

## Task Summary
- **What to build**: Upgrade 17 spiders with robust retry logic, explicit currency assignment, and metadata scavenging.
- **Success criteria**: All 17 spiders follow robust extraction standard and pass tests/syntax checks.
- **Interface contracts**: BookListing models in rbm_crawlers.
- **Code layout**: src/ directory.

## Key Decisions Made
- Starting investigation of existing spiders and models.

## Change Tracker
- **Files modified**: None yet
- **Build status**: Untested
- **Pending issues**: None

## Quality Status
- **Build/test result**: Untested
- **Lint status**: 0
- **Tests added/modified**: None

## Loaded Skills
None loaded.

## Artifact Index
- /opt/repos/rbm_crawlers/.agents/worker_m4_1/BRIEFING.md — Working briefing index
- /opt/repos/rbm_crawlers/.agents/worker_m4_1/progress.md — Progress tracker
- /opt/repos/rbm_crawlers/.agents/worker_m4_1/handoff.md — Handoff report
