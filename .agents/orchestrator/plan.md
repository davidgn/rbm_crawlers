# Project Plan: Crawler Calibration & Repair

## Objective
Calibrate and repair failing web scraping spiders in `rbm_crawlers` that timed out or yielded 0 results in the latest sweep. Upgrade extraction logic, separate currencies, and migrate Cloudflare-blocked spiders to `PlaywrightSearchSpider`.

## Milestones

### Milestone 1: Exploration & System Audit
- Dispatch 3 Explorers to audit the latest sweep logs/results (`smoke_results.json`, `sweep_final_results.txt`, `test_sweep.json`, `audit_spiders.py`, etc.).
- Identify all failing spiders (timeouts, 0 results, Cloudflare blocks, selector errors).
- Document exact failure root causes for each spider and categorize them into:
  1. Broken CSS selectors / pagination.
  2. Outdated architecture (missing `_get_robust_response`, improper currency handling).
  3. Cloudflare anti-bot blocks requiring Playwright migration.

### Milestone 2: Repair & Robust Extraction Upgrade
- Dispatch Worker to implement fixes for spiders with broken CSS selectors / pagination.
- Upgrade spiders to leverage `_get_robust_response`, native metadata extraction, and correct `price_currency` separation in `BookListing`.
- Verify execution stability (`python3 src/<spider_name>.py`).

### Milestone 3: Playwright Migration for Cloudflare-Blocked Spiders
- Dispatch Worker to migrate heavily blocked spiders to extend `PlaywrightSearchSpider`.
- Verify bypass of Cloudflare blocks and extraction of at least 1 item per spider.

### Milestone 4: Multi-Agent Verification & Quality Gate
- Dispatch Reviewers to inspect code quality and interface compliance.
- Dispatch Challengers to empirically verify spider execution and item extraction.
- Dispatch Forensic Auditor to verify genuine implementation and zero cheating.
