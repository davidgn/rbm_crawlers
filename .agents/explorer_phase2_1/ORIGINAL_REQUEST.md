# Explorer Task Request — Phase 2 Inventory & Analysis

## Objective
Identify all web scraping spiders in `/opt/repos/rbm_crawlers/src/` and categorize them into:
1. Spiders upgraded in Phase 1 (already using `_get_robust_response`, `price_currency` separation in `BookListing`, exponential backoff, etc.).
2. Remaining legacy spiders requiring Phase 2 upgrade.

## Instructions
1. Analyze the architecture in `src/` to understand the robust extraction logic conventions (e.g., `BaseSearchSpider`, `_get_robust_response`, `BookListing`, `price_currency`).
2. Inspect each spider file in `src/`.
3. List all spiders with their current implementation status, base class, networking method, and currency parsing logic.
4. For legacy spiders needing upgrade, detail what specific changes are needed to bring them to the robust standard without altering their working CSS selectors or pagination.
5. Save your complete analysis in `/opt/repos/rbm_crawlers/.agents/explorer_phase2_1/analysis.md` and write a handoff report in `/opt/repos/rbm_crawlers/.agents/explorer_phase2_1/handoff.md`.

## 2026-06-29T03:24:38Z
You are teamwork_preview_explorer for Phase 2 Calibration of rbm_crawlers.
Your working directory is /opt/repos/rbm_crawlers/.agents/explorer_phase2_1.
Please read /opt/repos/rbm_crawlers/.agents/explorer_phase2_1/ORIGINAL_REQUEST.md for full instructions.

Task:
1. Scan all files in /opt/repos/rbm_crawlers/src/ to analyze the codebase structure and extraction patterns.
2. Identify which spiders have already been upgraded in Phase 1 (e.g. using `_get_robust_response`, native metadata extraction, `price_currency` in `BookListing`, exponential backoff).
3. Identify all remaining legacy spiders that still need Phase 2 upgrade.
4. Document the exact list of remaining legacy spiders, their current base class/methods, and what specific refactoring is required.
5. Save your findings in /opt/repos/rbm_crawlers/.agents/explorer_phase2_1/analysis.md and write a self-contained handoff report in /opt/repos/rbm_crawlers/.agents/explorer_phase2_1/handoff.md. Send a message to parent when done.
