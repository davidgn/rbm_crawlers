# Original User Request

## 2026-06-28T21:54:42Z

# Teamwork Project Prompt — Draft

> Status: Launched
> Goal: Craft prompt → get user approval → delegate to teamwork_preview

Calibrate and repair a high-value subset of the failing web scraping spiders (those that timed out or yielded 0 results in the latest sweep). The goal is to fix broken CSS selectors, migrate heavily blocked spiders to Playwright, and upgrade them to safely use the newly refactored robust extraction logic.

Working directory: /opt/repos/rbm_crawlers

## Requirements

### R1. Identify and target failing spiders
Determine which spiders failed (timed out or yielded 0 results) during the latest sweep. Focus the calibration efforts on this subset.

### R2. Repair and calibrate extraction logic
Fix broken CSS selectors and pagination logic so the spiders correctly extract book listings.

### R3. Upgrade spiders to robust architecture
Ensure the spiders are leveraging the new robust architecture (e.g., `_get_robust_response`, native metadata extraction, and correct `price_currency` parsing) without breaking.

### R4. Migrate permanently blocked spiders
Identify spiders that are permanently blocked by anti-bot measures (e.g., Cloudflare) and migrate them to use `PlaywrightSearchSpider` instead of `HTMLSearchSpider`.

Integrity mode: development

## Acceptance Criteria

### Execution & Stability
- [ ] For each calibrated spider, running `python3 src/<spider_name>.py` successfully completes without unhandled exceptions or timeouts.
- [ ] If a spider encounters a Cloudflare block, it is successfully converted to extend `PlaywrightSearchSpider` and successfully bypasses the block to extract at least 1 item.

### Data Integrity
- [ ] Calibrated spiders successfully extract Title, URL, Price, and (when available) ISBN and Publisher.
- [ ] Prices are correctly formatted and the `price_currency` is accurately separated from the numeric amount in the generated `BookListing` objects.
- [ ] Calibrated spiders no longer yield 0 results for standard test queries (unless the site genuinely has 0 results).
