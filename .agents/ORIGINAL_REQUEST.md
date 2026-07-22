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

## 2026-06-29T03:23:48Z

# Teamwork Project Prompt — Draft

> Status: Launched
> Goal: Craft prompt → get user approval → delegate to teamwork_preview

Phase 2 Calibration: Upgrade all remaining web scraping spiders in the repository that were *not* part of the previous failure-recovery pass. The goal is to systematically apply the newly refactored robust extraction logic (currency separation, native metadata extraction, exponential backoff) across the rest of the spider ecosystem.

Working directory: /opt/repos/rbm_crawlers

## Requirements

### R1. Identify remaining legacy spiders
Determine which spiders were not upgraded during the previous pass (e.g., they don't yet use `_get_robust_response` or they don't pass `price_currency` to `BookListing`). 

### R2. Upgrade spiders to robust architecture
Systematically upgrade the identified legacy spiders to leverage the new robust architecture without breaking their existing CSS selectors or pagination logic. Ensure they extract the numeric price separately from the currency code.

### R3. Safe Refactoring
Do not alter the working data extraction logic (selectors) for these spiders, as they were successfully yielding results in the last sweep. Only refactor their networking and BookListing instantiation.

Integrity mode: development

## Acceptance Criteria

### Execution & Stability
- [ ] For a representative sample of upgraded spiders, running `python3 src/<spider_name>.py` successfully completes without unhandled exceptions or regressions.

### Data Integrity
- [ ] Upgraded spiders continue to successfully extract Title, URL, and Price.
- [ ] Prices are correctly formatted and the `price_currency` is accurately separated from the numeric amount in the generated `BookListing` objects across all upgraded spiders.

## 2026-06-29T16:50:07Z

# Teamwork Project Prompt — Draft

> Status: Launched
> Goal: Craft prompt → get user approval → delegate to teamwork_preview

Project: Reinforce the "fragile" M-bag origins by building dedicated C2C marketplace spiders for Bosnia, Montenegro, and Macao to increase our coverage density in these highly cost-effective logistical hubs.

Working directory: /opt/repos/rbm_crawlers

## Requirements

### R1. Build Bosnia Spider (OLX.ba)
Develop a new spider (e.g., `olx_ba_spider.py`) targeting `olx.ba` (specifically the "Knjige" / Books category) to establish robust C2C coverage for Bosnia and Herzegovina.

### R2. Build Montenegro Spiders
Develop at least two new spiders targeting Montenegro's primary classifieds platforms. Recommended targets are `patuljak.me` and `oglasi.me` (or `trgovac.me`).

### R3. Build Macao Spider
Investigate and develop a spider targeting the Macao second-hand book market. If a native local C2C site cannot be found, build an adapter for `kongfz.com` specifically filtering for Macao-based sellers, or target local classifieds.

### R4. Adhere to Robust Architecture
All new spiders MUST leverage the newly established robust architecture: use `_get_robust_response` for network requests and ensure the `price_currency` is accurately separated from the numeric price when generating `BookListing` models.

Integrity mode: development

## Acceptance Criteria

### Execution & Stability
- [ ] Running `python3 src/<new_spider>.py` for each of the newly created spiders successfully completes without unhandled exceptions or timeouts.

### Data Integrity
- [ ] Each new spider successfully extracts Title, URL, Price, and separates the ISO currency code into the `price_currency` field.
- [ ] The new spiders yield at least 1 valid `BookListing` during a standard execution (proving they can successfully navigate the target marketplace).



## 2026-07-05T01:01:44Z

# Teamwork Project Prompt — Draft

> Status: Launched
> Goal: Craft prompt → get user approval → delegate to teamwork_preview

Salvage and upgrade the remaining legitimate but blocked university textbook spiders (e.g., UPenn, KCL, LSE) to successfully bypass their anti-bot protections using headless browsers or Playwright.

Working directory: /opt/repos/rbm_crawlers

Integrity mode: development

## Requirements

### R1. Upgrade Specific High-Value Spiders
Target the specific high-value university spiders recently added (UPenn, LSE, KCL, Columbia, UChicago) that are currently blocked by anti-bot protections (yielding 403 Access Denied errors).

### R2. Bypass Protections
Implement robust bypassing mechanisms (such as migrating them to use Playwright or other headless browser architectures) so they can successfully load the search pages and extract data.

## Acceptance Criteria

### Execution & Extraction
- [ ] Running `python3 src/<spider_name>.py` for UPenn, LSE, KCL, Columbia, and UChicago successfully bypasses the anti-bot blocks.
- [ ] Each upgraded spider successfully extracts at least 1 valid `BookListing` object during a standard run, proving it can navigate the site and parse the data.
