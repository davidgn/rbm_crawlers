# Milestone 1: Comprehensive System Audit & Failing Spider Catalog

## Executive Summary
This analysis presents the system audit results for the `rbm_crawlers` repository under Milestone 1 (Exploration & System Audit). A total of **1,585 web scraping spider modules** were audited across multiple execution sweeps (`test_sweep.json`, `ucp_sweep.json`, `ucp_sweep_5.json`, `smoke_results.json`, `ucp_sweep_results.json`, and `sweep_final_results.txt`). 

Our audit reveals that while the scraper infrastructure maintains extensive global coverage across 1,585 target marketplaces, a substantial portion of spiders encounter execution failures or yield zero structured data. In the latest sweeps (`ucp_sweep_5.json` and `test_sweep.json`), between **1,135 and 1,191 spiders (71.6% - 75.1%)** failed to yield any new listings (`output_items_added == 0`).

---

## 1. Audit Source Manifest & Sweep Comparison

| File Name | Audit Context / Target Query | Total Spiders | Non-Zero Spiders | Timeouts (-999) | Zero Items / Failures | Notes / Primary Failure Driver |
|---|---|---|---|---|---|---|
| `test_sweep.json` | `University of Chicago` | 1,585 | 450 (28.4%) | 202 (12.7%) | 1,135 (71.6%) | Benchmark full-universe sweep. |
| `ucp_sweep_5.json` | `Chicago Manual of Style` | 1,585 | 394 (24.9%) | 139 (8.8%) | 1,191 (75.1%) | Latest sweep in `sweep_aliases.sh`. |
| `ucp_sweep.json` | `University of Chicago Press` | 1,585 | 878 (55.4%) | 220 (13.9%) | 707 (44.6%) | Historical baseline sweep. |
| `smoke_results.json` | Standalone Import Smoke Test | 1,585 | 0 | 0 | 1,585 | Process isolated without `PYTHONPATH=.`, triggering import errors (`returncode: -998`). |
| `ucp_sweep_results.json` | Diagnostic Run Matrix | 1,585 | 0 | 0 | 1,585 | Diagnostic baseline validation. |

---

## 2. Failure Taxonomy & Root Cause Analysis

Failing spiders across the repository fall into five distinct failure categories:

### A. Execution Timeouts (`returncode: -999`, `timeout: true`)
- **Mechanism**: Spiders exceed the default subprocess timeout limit (typically 60.0 seconds).
- **Causes**: Halted TCP connections, slow network responses from regional hosts, complex DOM rendering delays, or IP tarpitting/throttling.
- **Representative Examples**: `4swapp_eg_spider.py` (50.03s - 61.36s), `aba_books_uk_spider.py` (62.24s).

### B. Anti-Bot Blockades & Cloudflare Interception (HTTP 403 / 522 / 302 Redirects)
- **Mechanism**: Target web servers block automated requests via Cloudflare WAF, HTTP 403 Forbidden responses, or HTTP 522 Origin Connection Timeouts.
- **Causes**: Standard HTTP client requests (`httpx` / `requests`) lack JavaScript execution capabilities and modern browser fingerprinting.
- **Representative Examples**: `4swapp_eg_spider.py` (HTTP 522), `abaa_webring_spider.py` (HTTP 403 on Strand Books), `58tongcheng_cn_spider.py` (302 redirect to 404/Captcha).

### C. CLI Argument Interface Mismatches (`returncode: 2`)
- **Mechanism**: The runner script (`scripts/smoke_spider_matrix.py`) invokes spiders with standard arguments `--limit-pages` and `--limit-items`. Spiders using non-standard `argparse` parameters reject these arguments and exit immediately with exit code 2.
- **Causes**: Legacy or custom argument definitions (e.g. `--limit`, `--max-pages`, `--delay`) instead of conforming to the base spider contract.
- **Representative Examples**: `999_md_spider.py` (`unrecognized arguments: --limit-items 2`), `abebooks_com_spider.py`, `alib_ru_spider.py`, `almaktabah_spider.py`, `askitab_spider.py`, `bikroy_bd_spider.py`, `booklooker_spider.py`.

### D. Python Syntax Errors & Instantiation Mismatches (`returncode: -998` / `returncode: 1`)
- **Mechanism**: Fatal Python runtime errors occur prior to crawling.
- **Causes**: Broken syntax in spider files or missing required constructor positional arguments.
- **Representative Examples**:
  - `5miles_us_spider.py`: `SyntaxError: invalid decimal literal (5miles_us_spider.py, line 4)`.
  - `7net_j_p_spider.py`: `TypeError: HTMLSearchSpider.__init__() missing 1 required positional argument: 'selectors'`.

### E. Broken CSS Selectors / Layout Drift (`returncode: 0`, `output_items_added: 0`)
- **Mechanism**: Spiders complete execution within ~30-50 seconds with status 0, but extract 0 listings.
- **Causes**: Target website markup has drifted or updated, causing CSS/XPath selectors to yield empty node sets.
- **Representative Examples**: `abbeys_au_spider.py` (37.97s, 0 items), `abe_books_spider.py` (37.77s, 0 items).

---

## 3. Structured Catalog of Representative Failing Spiders

The table below catalogs representative failing spiders across territories and platforms, documenting their status metrics, duration, item yields, and error conditions.

| Spider Module | Target Platform | Territory | Error Status / Returncode | Duration (s) | Items Scraped | Root Cause / Diagnostic Tail |
|---|---|---|---|---|---|---|
| `src/4swapp_eg_spider.py` | FourSwapp_EG | Egypt | Timeout (-999) / HTTP 522 | 61.36s | 0 | Cloudflare / Server Error HTTP 522 |
| `src/58tongcheng_cn_spider.py` | 58Tongcheng_CN | China | Success (0) | 50.76s | 0 (or 1 in prior run) | Redirects to 404/captcha page |
| `src/5miles_us_spider.py` | 5Miles US | United States | Fatal (-998) | N/A | 0 | SyntaxError: invalid decimal literal line 4 |
| `src/7net_j_p_spider.py` | 7net (JP) | Japan | Exception (1) | 34.26s | 0 | TypeError: missing 1 required arg 'selectors' |
| `src/999_md_spider.py` | 999 MD | Moldova | ArgError (2) | 21.01s | 0 | Unrecognized arguments: --limit-items 2 |
| `src/aba_books_uk_spider.py` | ABA Book Search | United Kingdom | Timeout (-999) | 62.24s | 0 | Process timed out after 60s |
| `src/abaa_webring_spider.py` | ABAA Webring | United States | Success (0) | 35.70s | 0 | HTTP 403 Forbidden on Strand Books |
| `src/abbeys_au_spider.py` | Abbey's Books | Australia | Success (0) | 37.97s | 0 | CSS Selector mismatch / 0 items extracted |
| `src/abe_books_spider.py` | AbeBooks | International | Success (0) | 37.77s | 0 | Redirected to SearchEntry errorcode=10 |
| `src/abebooks_com_spider.py` | AbeBooks COM | United States | ArgError (2) | 21.61s | 0 | Unrecognized arguments: --limit-pages / --limit-items |
| `src/addissouq_et_spider.py` | AddisSouq | Ethiopia | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-items 2 |
| `src/adverts_ie_spider.py` | Adverts IE | Ireland | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-items 2 |
| `src/afribaba_guinea_spider.py` | Afribaba | Guinea | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-items 2 |
| `src/alib_ru_spider.py` | Alib RU | Russia | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-pages / --limit-items |
| `src/almaktabah_spider.py` | Al Maktabah | Regional MEA | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-pages / --limit-items |
| `src/bikroy_bd_spider.py` | Bikroy | Bangladesh | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-items 2 |
| `src/booklooker_spider.py` | Booklooker | Germany | ArgError (2) | ~20s | 0 | Unrecognized arguments: --limit-pages / --limit-items |

---

## 4. Geographic & C2C Coverage Gap Audit (`gap_analysis.txt`)

Analysis of `gap_analysis.txt` reveals critical geographic vulnerabilities in peer-to-peer (C2C) book marketplaces across key territories:

1. **Inadequate C2C Coverage (0 Native Spiders)**:
   - North Korea (25M pop): 0 C2C spiders
   - Eritrea (3M pop): 0 C2C spiders
   - Suriname (0.6M pop): 0 C2C spiders

2. **Thin C2C Coverage (High Vulnerability Top-Population Countries)**:
   - DR Congo (95M pop): 6 C2C spiders (Target milestone candidates for hardening)
   - Iran (87M pop): 7 C2C spiders
   - Thailand (71M pop): 8 C2C spiders
   - Tanzania (63M pop): 7 C2C spiders
   - Myanmar (53M pop): 8 C2C spiders
   - Uganda (47M pop): 2 C2C spiders
   - Sudan (45M pop): 4 C2C spiders
   - Algeria (44M pop): 5 C2C spiders
   - Iraq (43M pop): 5 C2C spiders

---

## 5. Recommendations for Milestone 2 & Milestone 3

Based on our system audit findings, downstream implementation teams should prioritize:

1. **CLI Interface Standardisation (Milestone 2 Priority)**:
   - Refactor all spider entrypoints to inherit standard CLI parameter handling from `HTMLSearchSpider` / `BaseSpider` so that `--limit-pages` and `--limit-items` are universally accepted without throwbacks.
2. **Selector Repair & Calibration (Milestone 2 Priority)**:
   - Calibrate broken CSS and XPath selectors for high-value retail spiders (e.g. Abbey's Books, AbeBooks) that return exit code 0 but zero listings.
3. **Playwright Migration (Milestone 3 Priority)**:
   - Migrate Cloudflare-blocked and anti-bot protected spiders (e.g. `4swapp_eg_spider.py`, `abaa_webring_spider.py`, `58tongcheng_cn_spider.py`) from `HTMLSearchSpider` to `PlaywrightSearchSpider` to bypass JavaScript security checks.
