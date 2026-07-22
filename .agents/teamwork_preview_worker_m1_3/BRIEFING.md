# BRIEFING — 2026-07-05T01:51:00-04:00

## Mission
Fix correctness, selector, and parser bugs in UPenn Bookstore Used Spider Migration (Milestone 1).

## 🔒 My Identity
- Archetype: Worker (generation 3)
- Roles: implementer, qa, specialist
- Working directory: /opt/repos/rbm_crawlers/.agents/teamwork_preview_worker_m1_3
- Original parent: 559de788-21ba-4c2c-82f8-780fc355f13c
- Milestone: UPenn Bookstore Used Spider Migration (Milestone 1)

## 🔒 Key Constraints
- CODE_ONLY network mode: no external internet, curl, wget, lynx, etc.
- No dummy/facade implementations or hardcoded verification values.
- Work within my own folder for agent metadata, write only to `/opt/repos/rbm_crawlers` and subfolders for project changes.
- Follow the Handoff Protocol.

## Current Parent
- Conversation ID: 559de788-21ba-4c2c-82f8-780fc355f13c
- Updated: 2026-07-05T01:51:00-04:00

## Task Summary
- **What to build**: Fix various bugs (Link Selector, Thousands Separator, Dual Price Mismatch, Missing Link Graceful Exit, ISBN-10 URL/Text Scavenging, Author Prefix casing, Test Assertions)
- **Success criteria**: All tests (`tests/test_upenn_bookstore_used_spider.py`, `tests/verify_upenn_spider.py`, `tests/test_adversarial_upenn.py`, and `tests/test_upenn_adversarial.py`) pass.
- **Interface contracts**: Source files in `src/`, tests in `tests/`.

## Key Decisions Made
- [TBD]

## Artifact Index
- `/opt/repos/rbm_crawlers/.agents/teamwork_preview_worker_m1_3/ORIGINAL_REQUEST.md` — Original request text.

## Change Tracker
- **Files modified**: None yet.
- **Build status**: Untested
- **Pending issues**: None

## Quality Status
- **Build/test result**: Untested
- **Lint status**: Untested
- **Tests added/modified**: None yet

## Loaded Skills
- None
