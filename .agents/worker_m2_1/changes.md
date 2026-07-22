# Milestone 2 Code Changes & Implementation Details

**Agent**: `worker_m2_1`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/worker_m2_1`  
**Milestone**: Milestone 2 (Repair & Architecture Upgrade)  
**Date**: 2026-06-28  

---

## Overview of Changes

Milestone 2 focused on repairing broken custom and auto-generated web scraping spiders, upgrading spider architecture for robust HTTP fetching, enforcing strict schema compliance for clean numerical `price` (float string) and separated `price_currency` in `BookListing`, fixing CSS selector drift/missing pagination parameters, and ensuring all custom spiders support standard CLI matrix runner arguments (`--limit-pages`, `--limit-items`, `--query`) without exiting with code 2.

---

## Modified Files Summary

| File Path | Component | Primary Fix / Upgrade Summary |
|---|---|---|
| `src/html_search_spider.py` | Base Class | Updated `__init__` to fallback `self.price_currency = price_currency or kwargs.get("currency", "")` so legacy and auto-generated spiders correctly populate currency metadata. |
| `src/playwright_search_spider.py` | Base Class | Updated `__init__` to support `currency` fallback and ensure clean price/currency extraction in Playwright runs. |
| `src/5miles_us_spider.py` | Custom Spider | Fixed Python `SyntaxError` (renamed class from `5milesUsSpider` to `FiveMilesUsSpider`), updated constructor signature, CSS selectors (`container`, `title`, `price`), pagination path (`{page}`), and CLI argument parsing. |
| `src/7net_j_p_spider.py` | Custom Spider | Fixed constructor signature mismatch by providing explicit `selectors` dict, `price_currency="JPY"`, `territory="Japan"`, formatted `search_path`, and `parse_known_args()` CLI parsing. |
| `src/bkmkitap_spider.py` | Custom Spider | Fixed constructor mismatch by providing explicit `selectors` dict, `price_currency="TRY"`, `territory="Turkey"`, fixed unescaped `search_path`, and `parse_known_args()` CLI parsing. |
| `src/999_md_spider.py` | Custom Spider | Updated CSS selectors (`li.ads-list-detail-item`), added `{page}` parameter to `search_path`, set `price_currency="MDL"`, and added support for `--limit-items` with `parse_known_args()`. |
| `src/abebooks_com_spider.py` | Custom Spider | Upgraded HTTP fetching with `_get_robust_response` retry backoff, separated numeric price float string (`f"{val:.2f}"`) and currency (`"USD"`) in `BookListing`, and updated CLI parsing in `main()`. |
| `src/aladin_spider.py` | Custom Spider | Added `_get_robust_response` HTTP retries, added price/currency extraction logic in `_harvest_item` (`KRW`), enforced distinct `price` float string and `price_currency` in `BookListing`, and updated CLI parsing. |
| `src/buyzoxs_playwright_spider.py` | Custom Spider | Fixed `price` concatenation bug (`f"EUR {price}"` -> clean numeric price), set `price_currency="EUR"` in `BookListing`, and added CLI runner support with `parse_known_args()`. |
| `src/alib_ru_spider.py` | Custom Spider | Fixed `_extract_price` to return clean numeric string without currency symbols, added `"price_currency": "RUB"` to record dictionary, and added CLI runner argument handling with `parse_known_args()`. |
| `src/booklooker_spider.py` | Custom Spider | Added `_get_robust_response` HTTP retries, extracted clean numeric price float string and `EUR` currency in `BookListing`, and updated CLI parsing in `main()`. |
| `src/bikroy_bd_spider.py` | Custom Spider | Updated CSS selectors, added `{page}` parameter to `search_path`, set `price_currency="BDT"`, and added support for `--limit-items` with `parse_known_args()`. |
| `src/almaktabah_spider.py` | Custom Spider | Added price (`LBP`) extraction in `_harvest_item`, enforced distinct `price` and `price_currency` in `BookListing`, and updated CLI parsing in `main()`. |

---

## Detailed Implementation Rationale

1. **Syntax & Constructor Repairs**:
   - `5miles_us_spider.py` had a fatal syntax error because Python class names cannot start with numeric digits (`class 5milesUsSpider`). Renamed to `FiveMilesUsSpider`.
   - Spiders like `7net_j_p_spider.py` and `bkmkitap_spider.py` passed keyword arguments intended for `BaseSpider`/`HTMLSearchSpider` that caused positional/keyword argument confusion or left `selectors` as `{}`. They were refactored to pass explicit `selectors` dicts containing multi-selector fallbacks (e.g. `div.subProduct, div.product-item, div[class*="product"]`).

2. **CLI Runner Interface Compliance**:
   - Standard runner scripts invoke spiders via `python3 src/<spider>.py --limit-pages N --limit-items N --query Q`. Previously, custom spiders using strict `argparse.ArgumentParser.parse_args()` exited with returncode 2 upon encountering unexpected arguments.
   - Updated all targeted custom spiders to use `parser.parse_known_args()` and explicitly register `--limit-pages`, `--limit-items`, and `--query` parameters.

3. **Data Integrity & Schema Standardization**:
   - In accordance with `PROJECT.md` and Pydantic schema contracts, `BookListing` objects must separate the clean numerical price from the currency code.
   - Fixed spiders like `abebooks_com_spider.py`, `buyzoxs_playwright_spider.py`, `alib_ru_spider.py`, and `aladin_spider.py` that previously concatenated currency symbols into the `price` field (e.g. `"15.99 USD"` or `"EUR 12.50"`). Price is now extracted and validated as a clean numerical float string (e.g. `"15.99"`), and currency is stored in `price_currency` (e.g. `"USD"`, `"EUR"`, `"KRW"`, `"RUB"`).

4. **Robust HTTP Fetching**:
   - Standardized HTTP fetching across standalone spiders (`abebooks_com_spider.py`, `aladin_spider.py`, `booklooker_spider.py`) by introducing `_get_robust_response` methods with User-Agent rotation and exponential backoff retry logic for transient HTTP errors (403, 429, 50x).
