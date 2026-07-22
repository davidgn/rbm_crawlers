# Execution Plan — Phase 3 C2C Marketplace Spiders

## Goal
Build, calibrate, and verify dedicated C2C marketplace spiders for Bosnia (olx.ba), Montenegro (patuljak.me, oglasi.me/trgovac.me), and Macao (kongfz adapter or local C2C).

## Milestones & Step-by-Step Breakdown

### Milestone 1: Bosnia Spider (`olx_ba_spider.py`)
- Step 1.1: Dispatch Explorer (`teamwork_preview_explorer`) to inspect existing spider patterns (e.g. `bosnia_olx_spider.py` or existing base spiders) and analyze target endpoints on `olx.ba`.
- Step 1.2: Dispatch Worker (`teamwork_preview_worker`) to implement `src/olx_ba_spider.py` adhering to robust architecture (`_get_robust_response`, BAM currency separation).
- Step 1.3: Dispatch Reviewer & Challenger to verify extraction accuracy, stability, and absence of unhandled exceptions.
- Step 1.4: Dispatch Forensic Auditor (`teamwork_preview_auditor`) for integrity check.

### Milestone 2: Montenegro Spiders (`patuljak_me_spider.py`, `oglasi_me_spider.py` / `trgovac_me_spider.py`)
- Step 2.1: Dispatch Explorer to analyze structure of `patuljak.me` and `oglasi.me` / `trgovac.me`.
- Step 2.2: Dispatch Worker to implement Montenegro spiders with EUR currency separation.
- Step 2.3: Dispatch Reviewer, Challenger, and Forensic Auditor for validation.

### Milestone 3: Macao Spider (`kongfz_macao_spider.py` / adapter)
- Step 3.1: Dispatch Explorer to analyze local Macao C2C options or `kongfz.com` filtering for Macao sellers.
- Step 3.2: Dispatch Worker to build Macao spider/adapter adhering to robust architecture.
- Step 3.3: Dispatch Reviewer, Challenger, and Forensic Auditor for validation.

### Milestone 4: Verification & Handoff
- Step 4.1: Run verification sweep across all new spiders.
- Step 4.2: Update progress.md and send completion report to Sentinel.
