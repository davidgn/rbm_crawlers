# Detailed Systemic Audit & Architecture Analysis of Spiders

**Agent**: `explorer_m1_2`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/explorer_m1_2`  
**Scope**: Codebase audit of all spider implementations in `/opt/repos/rbm_crawlers/src`  
**Milestone**: Milestone 1 (Exploration & System Audit)  

---

## Executive Summary

A comprehensive source code audit across `/opt/repos/rbm_crawlers/src` was conducted to evaluate reference extraction patterns, CSS selectors, pagination logic, and compliance with the project's robust architecture standards. 

The audit reveals systemic architectural gaps across multiple tiers of spider implementations:
1. **Placeholder Selector Degradation**: Over 400 auto-generated spiders (e.g., `tier4_*`, `tier5_*`, `tier6_*`, `genuine4_*`, `genuine_reg_*`) rely on dummy CSS selectors (`div.item`, `h3`, `.price`) and unformatted search URLs (`search?q={search_term}` missing `{page}`). This causes 100% of these spiders to yield 0 results or fail during sweep execution.
2. **Robust Architecture Non-Compliance**: Base utility `_get_robust_response` is implemented in `HTMLSearchSpider` (`src/html_search_spider.py:49`), but custom standalone spiders (e.g., `abebooks_com_spider.py`, `aladin_spider.py`) bypass it, issuing raw un-retried `httpx.Client.get` calls that crash or fail on temporary network errors or 403 blocks.
3. **Price vs. Currency Pollution**: Widespread violations of the `BookListing` schema contract exist across both base classes and standalone spiders. Spiders frequently format `price` as string concatenations (e.g., `"EUR 14.99"`, `"INR 557.00"`) while leaving `price_currency` empty (`None` or `""`). Furthermore, in `HTMLSearchSpider`, subclass kwarg mismatches (`currency="USD"` passed instead of `price_currency="USD"`) result in empty currency fields.
4. **Detail Page Flooding & Unhandled Blocking**: `HTMLSearchSpider._parse_item` attempts to HTTP GET detail pages for every candidate link on a search result page to run `local_fallback_extract`, creating excessive HTTP traffic, causing rate-limiting, and failing instantly when Cloudflare anti-bot challenges are encountered.

---

## 1. Systemic Architecture Audit & Extraction Pattern Taxonomy

Spiders in `/opt/repos/rbm_crawlers/src` fall into three distinct architectural categories:

### Category A: Auto-Generated Subclasses of `HTMLSearchSpider`
* **Count**: ~450+ files (e.g., `genuine4_aladin_spider.py`, `genuine_reg2_alsoug_spider.py`, `tier5_*`).
* **Inheritance**: Extends `HTMLSearchSpider`.
* **Extraction Pattern**: Instantiated via `super().__init__(...)` passing hardcoded arguments.
* **Flaws**:
  * Pass generic dummy selectors: `selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'}`.
  * Pass keyword arguments unrecognized by `HTMLSearchSpider.__init__` (e.g., `item_pattern`, `url_regex`, `price_regex`, `currency`).
  * Fail to provide real site-specific DOM paths.

### Category B: Custom HTML Spiders with Independent Harvesting Loops
* **Count**: ~30+ files (e.g., `abebooks_com_spider.py`, `aladin_spider.py`, `bkmkitap_spider.py`).
* **Inheritance**: Extends `BaseSpider` directly or overrides `HTMLSearchSpider.run`.
* **Extraction Pattern**: Custom BeautifulSoup parsing loops using specialized metadata tags (`meta[itemprop=...]` or regex extraction).
* **Flaws**:
  * Direct instantiation of `httpx.Client` without exponential backoff or retry logic.
  * Concatenation of currency and price into single strings (`price=f"{price_str} {currency}"`), omitting `price_currency`.
  * Incomplete property assignment (e.g., `aladin_spider.py` creates dummy `BookListing` items for caching without setting price or currency).

### Category C: Playwright-Based Spiders
* **Count**: ~15+ files (e.g., `playwright_search_spider.py`, `buyzoxs_playwright_spider.py`).
* **Inheritance**: Extends `BaseSpider` or `PlaywrightSearchSpider`.
* **Extraction Pattern**: Uses headless Chromium via `sync_playwright` with stealth plugins.
* **Flaws**:
  * `PlaywrightSearchSpider._parse_item` hardcodes currency prefixes (e.g., `price_val = "INR " + match.group(0)` at line 98) rather than separating numeric value and currency symbol.

---

## 2. Selector Evaluation & Placeholder Degradation Analysis

### 2.1 The Placeholder Selector Problem
In generator scripts across the codebase (e.g., `generate_tier5_spiders.py:159`, `generate_genuine4_spiders.py:76`), spiders were created using a static template:
```python
selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'}
```
When executed against real-world e-commerce platforms (such as MercadoLibre, Locanto, OpenSooq, OLX):
* `div.item` matches zero DOM elements on modern React/Vue/Angular-rendered marketplaces.
* When `container` fails to match, `HTMLSearchSpider.run()` falls back to `soup.find_all('a', href=True)`, treating every navigation, header, footer, and privacy policy link on the web page as a potential book item.
* This results in massive false-positive noise, failed parse attempts, or 0 valid listings scraped.

### 2.2 Concrete Examples of Selector Failures
1. **`src/bkmkitap_spider.py`** (lines 13–20): Passes `item_pattern`, `url_regex`, and `price_regex` as `**kwargs` to `HTMLSearchSpider.__init__`. Because `HTMLSearchSpider` ignores these regex kwargs and expects a `selectors` dict, `self.selectors` evaluates to `{}`. The spider relies entirely on unguided link matching.
2. **`src/genuine4_dangdang_spider.py`**: Inherits from `HTMLSearchSpider` with `div.item`. Actual Dangdang search HTML uses `ul.bigimg > li` for item containers and `p.name > a` for titles. The placeholder selector yields 0 results.

---

## 3. Pagination Logic & URL Formatting Deficiencies

### 3.1 Unformatted `search_path` Templates
In `HTMLSearchSpider.run()` (`src/html_search_spider.py:77`), search URLs are constructed as:
```python
url = f"{self.base_url}/{self.search_path}".format(query=search_term.replace(' ', '+'), search_term=search_term.replace(' ', '+'), page=page)
```
However, hundreds of auto-generated spiders specify `search_path` as `"search?q={search_term}"` without including the `{page}` or `{start}` parameter.
* **Impact**: As `page` increments from 1 to `limit_pages` in the outer loop, the exact same URL is fetched repeatedly. The spider fetches page 1 continuously until reaching `limit_pages` or deduplication stops it.

### 3.2 Page Offset vs. Page Number Mismatches
Sites like AbeBooks (`src/abebooks_com_spider.py:113`) and Aladin (`src/aladin_spider.py:80`) use offset-based pagination (`start=0, 30, 60...` or `start=0, 50, 100...`). 
* Spiders that force standard `page=1, 2, 3` URL parameters on offset-based APIs fail to advance through result sets, fetching page 1 repeatedly.

---

## 4. Robust Architecture Compliance Matrix

| Architecture Requirement | Implementation Standard | Current Codebase Compliance Status | Specific Code Locations & Evidence |
|---|---|---|---|
| **Robust HTTP Fetching** | Use `_get_robust_response` with retry backoff and user-agent rotation | ❌ **Non-compliant in custom spiders** | `HTMLSearchSpider` defines `_get_robust_response` (`html_search_spider.py:49`). However, `abebooks_com_spider.py:117` and `aladin_spider.py:85,128` use raw `self.client.get()` without retries. |
| **Clean Price / Currency Separation** | `BookListing.price` must be numeric string (`"14.99"`). `BookListing.price_currency` must be standard currency code (`"USD"`). | ❌ **Systemically violated** | `abebooks_com_spider.py:176` sets `price="12.99 USD"` and leaves `price_currency=None`. `playwright_search_spider.py:98` sets `price="INR 500"`. In `bkmkitap_spider.py:13`, subclass passes `currency="TRY"` which is lost in `**kwargs`. |
| **Native Metadata Extraction** | Extract ISBN, Publisher, Year natively from product DOM or schema.org microdata | ⚠️ **Partially implemented / Flawed** | `abebooks_com_spider.py:151-204` correctly parses microdata metas. However, `html_search_spider.py:199` makes secondary HTTP requests for *every* listing link on the search page, triggering rate-limits. |
| **Cloudflare Handling** | Detect 403 CF blocks and escalate to `PlaywrightSearchSpider` | ⚠️ **Detection only, no auto-escalation** | `html_search_spider.py:90` logs `"Blocked by Cloudflare permanently"` and breaks execution without dynamic escalation or fallback. |

---

## 5. Identification of Specific Outdated & Failing Spider Implementations

Below is a detailed inventory of representative spider implementations requiring repair and architectural upgrade during Milestone 2 and Milestone 3:

1. **`src/abebooks_com_spider.py`**
   * **Issues**: Custom HTTP calls bypass `_get_robust_response`. Concatenates currency into `price` (`price = f"{price_str} {currency}"` at line 176) while leaving `price_currency` unpopulated in `BookListing`.
   * **Required Action**: Separate numeric price and currency code; wrap requests in robust retries.
2. **`src/aladin_spider.py`**
   * **Issues**: Bypasses retry infrastructure (`self.client.get` at lines 85 & 128). In `_harvest_item` (line 139), creates incomplete `BookListing` records with missing `price`, `price_currency`, and `author`.
   * **Required Action**: Standardize `BookListing` instantiation and integrate `_get_robust_response`.
3. **`src/bkmkitap_spider.py`**
   * **Issues**: Passes `currency="TRY"` and regex arguments (`item_pattern`, `price_regex`, etc.) to `HTMLSearchSpider`, which expects `price_currency` and a `selectors` dict. Results in empty `price_currency` and fallback parsing.
   * **Required Action**: Update constructor parameters to align with `HTMLSearchSpider` interface contract (`selectors` dict and `price_currency` parameter).
4. **`src/buyzoxs_playwright_spider.py`**
   * **Issues**: Line 40 formats price as `price=f"EUR {price}"` without setting `price_currency`.
   * **Required Action**: Set `price=price` (numeric string) and `price_currency="EUR"`.
5. **`src/playwright_search_spider.py`** (Base Class)
   * **Issues**: Line 98 hardcodes `price_val = "INR " + match.group(0).replace(",", "")` instead of storing numerical amount in `price` and `"INR"` in `price_currency`.
   * **Required Action**: Refactor `_parse_item` to extract numeric amount into `price` and currency symbol/code into `price_currency`.
6. **`src/genuine4_*` & `src/tier5_*` Auto-Generated Spiders (e.g., `genuine4_dangdang_spider.py`, `tier5_paraguay_locanto_spider.py`)**
   * **Issues**: All utilize static placeholder selectors (`div.item`, `h3`, `.price`) and missing pagination tokens (`search?q={search_term}`).
   * **Required Action**: Replace placeholder selectors with site-verified CSS selectors; update `search_path` to include `{page}` or `{start}` parameters.

---

## 6. Actionable Upgrade & Calibration Roadmap (Milestones 2 & 3)

To achieve full calibration and architecture compliance across the crawler fleet, downstream implementation agents should execute the following technical plan:

1. **Refactor `HTMLSearchSpider` & `PlaywrightSearchSpider` Base Interfaces**:
   * Update `_parse_item` across base classes to guarantee clean regex extraction: numerical digits/decimals into `price`, alphabetic ISO codes into `price_currency`.
   * Support `currency` alias in `HTMLSearchSpider.__init__` so legacy subclasses passing `currency="..."` correctly initialize `self.price_currency`.
2. **Selector Calibration Campaign**:
   * Audit site HTML structures for failing spiders and update `selectors` dictionaries with authentic containers, titles, prices, and links.
3. **Pagination Template Repair**:
   * Ensure all `search_path` strings contain valid formatting placeholders (`{search_term}` and `{page}` / `{start}`).
4. **Cloudflare & Anti-Bot Migration**:
   * Migrate spiders encountering persistent HTTP 403 Cloudflare blocks (e.g., heavily protected marketplaces) from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
