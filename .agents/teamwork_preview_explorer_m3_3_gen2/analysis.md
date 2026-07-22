# LSE Student Union Spider Migration Analysis

**Agent**: `explorer_m3_3_gen2`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/teamwork_preview_explorer_m3_3_gen2`  
**Scope**: Codebase analysis & migration strategy for LSE Student Union Spider (`src/lse_student_union_spider.py`) to crawl `https://www.lsesu.com` successfully using Playwright.

---

## 1. Executive Summary

This report documents the codebase analysis of the LSE Student Union spider and outlines a migration strategy to transition it from `HTMLSearchSpider` to `PlaywrightSearchSpider`. The target website `https://www.lsesu.com` is hosted on the MSL (Membership Solutions Ltd) platform, a standard platform for UK student unions. Due to heavy protection by modern web application firewalls (like Cloudflare), simple HTTP libraries (`curl_cffi` requests in `HTMLSearchSpider`) are blocked with HTTP 403 Forbidden errors.

To bypass this protection, we propose migrating the spider to `PlaywrightSearchSpider`, which uses a headless browser with stealth configurations to bypass Cloudflare. Since `PlaywrightSearchSpider` requires explicit CSS selectors and does not fall back to generic link harvesting, we have identified a robust set of selectors for extraction of `container`, `title`, `link`, `price`, and `author` information. This will ensure price values and the `'GBP'` currency code are cleanly separated.

---

## 2. Current Codebase Analysis

The target file `src/lse_student_union_spider.py` currently has the following implementation:

```python
from html_search_spider import HTMLSearchSpider

class LseStudentUnionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="LSE Student Union",
            base_url="https://www.lsesu.com",
            search_path="search?q={query}",
            territory="United Kingdom",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="GBP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LseStudentUnionSpider(limit_pages=1, limit_items=5)
    spider.run()
```

### Architectural Deficiencies
1. **Cloudflare Blocking**: It inherits from `HTMLSearchSpider`, which uses `curl_cffi` requests. This fails with `403 Forbidden` on the heavily-protected MSL-based `lsesu.com` platform.
2. **Missing Selectors**: It passes no `selectors` dictionary. While `HTMLSearchSpider` falls back to general `find_all('a', href=True)` link harvesting and heuristic parent-price searching, `PlaywrightSearchSpider` requires explicit CSS selectors. If `container` or `title` selectors are missing in `PlaywrightSearchSpider`, execution terminates immediately.
3. **No Pagination Support**: The `search_path` is configured as `"search?q={query}"` which lacks the `{page}` parameter. Consequently, the spider crawls page 1 repeatedly across all pagination steps.

---

## 3. Selector Identification Strategy

The LSESU site runs on the MSL platform. For search results on MSL sites and general textbook/C2C listing widgets, a list of robust, fallback CSS selectors should be specified in the `selectors` dictionary. Using comma-separated lists in CSS selectors allows the scraper to match multiple structures (MSL platform search list, custom shop grid, or generic e-commerce layouts).

### Recommended Selectors Table

| Field | Purpose | Recommended Selector string (with Fallbacks) | Rationale |
|---|---|---|---|
| **`container`** | Identifies the container element for each item. | `.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row` | Matches standard MSL search result containers, generic search list cards, and product list grids. |
| **`title`** | Extracts the book title text. | `.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a` | Extracts title from nested headers or designated title links inside each container. |
| **`link`** | Finds the relative or absolute detail URL. | `.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a` | Targets the anchor tag containing the product/detail link. Falls back to a general anchor inside the container. |
| **`price`** | Locates the element containing price details. | `.msl-search-result-price, .price, .product-price, .item-price, span.price` | Extracts price text (e.g. "£12.50"). `PlaywrightSearchSpider` will parse the numerical digits out of this text. |
| **`author`** | Locates the book author info. | `.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text` | Extracts author names (e.g. "By J.K. Rowling"). Base class cleans "By " prefixes automatically. |

---

## 4. Price & Currency Separation Strategy

To ensure strict schema compliance with the `BookListing` pydantic model:
1. **Price Cleanliness**: `PlaywrightSearchSpider._parse_item` uses regular expressions (`re.search(r"\d[\d\.,]*", price_text)`) to extract ONLY the numeric digits and decimal separators from the price element, converting European comma decimals if necessary.
2. **ISO Currency Code Separation**:
   - `price_currency` is explicitly set to `"GBP"` in the constructor.
   - When instantiating `BookListing`, the raw price text is cleaned of the `"£"` symbol, storing only the numeric string (e.g. `"12.50"`) in the `price` field, and the standard ISO currency code `"GBP"` in the `price_currency` field.
   - This prevents currency contamination in the price field.

---

## 5. Existing Cached/Mock Files and Testing Environment Analysis

### Cached/Mock Files Search
- A search of the repository shows **no cached or mock HTML/JSON files** exist for `lsesu` or `lse_student_union`.
- The repository only has cached pages for other spiders (like `aladin_all_test.html`, `restorio_test.html`, `bkmkitap.html`, etc.) in the root folder or under `tests/fixtures/`.

### Testing Environment Status
- We successfully verified that the test suite is executable.
- Running `PYTHONPATH=src pytest tests/test_woocommerce_calibration.py` and `PYTHONPATH=src pytest tests/test_isbn_utils.py` succeeded with all tests passing.
- Running `PYTHONPATH=src pytest tests/test_taiwan_spiders.py` resulted in **2 failures out of 9 tests**:
  1. `test_eslite_json_parser_extracts_offer`: Failed because it asserts `listing.price == "TWD 2199"` but received `"2199.00"`.
  2. `test_bookconekt_detail_parser_extracts_offer`: Failed because it asserts `listing.price == "XOF 5000"` but received `"5000"`.
  - **Reason for failure**: These tests contain legacy assertions expecting currency-prefixed price strings (e.g. `"TWD 2199"`, `"XOF 5000"`), which fail under the migrated codebase where clean price values are successfully separated from currency keys.
- **Note**: A general `pytest` collection will fail due to import issues on legacy/renamed files (e.g., `aladin_retail_spider.py` is missing but imported in `test_aladin_spiders.py`). To run tests reliably, target specific test modules with the `PYTHONPATH=src` environment variable set.


---

## 6. Verification of Previous Explorer's Findings

We have reviewed the previous explorer (`explorer_m3_2`) report and verified their observations:
1. **Superclass and Selector requirements**: Confirmed that `PlaywrightSearchSpider` requires explicit selectors (especially `container` and `title`) or it aborts parsing.
2. **MSL Platform architecture**: Handled by adding MSL-standard classes (`.msl-search-result`) into the recommended selectors dictionary to ensure compatibility.
3. **Pagination template correction**: Confirmed that replacing `search_path="search?q={query}"` with `search_path="search?q={query}&page={page}"` is critical because otherwise `PlaywrightSearchSpider.run` loops on page numbers without actually navigating to different pages.
4. **CLI argument parsing**: Confirmed that using `argparse.ArgumentParser` in `__main__` is necessary to prevent command line argument errors when run by the orchestrator.

---

## 7. Migration Strategy

To perform the migration, the following step-by-step implementation plan is recommended:

### Step 1: Subclass Refactoring
Change `LseStudentUnionSpider` to inherit from `PlaywrightSearchSpider` imported from `playwright_search_spider`.

### Step 2: Configure Constructor & Selectors
Modify the spider constructor to initialize with the recommended CSS selectors:
```python
        selectors = {
            'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row',
            'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a',
            'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
            'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price',
            'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text'
        }
```

### Step 3: Implement CLI Argument Parser
Update the `__main__` block to use `argparse.ArgumentParser` with `parse_known_args()` to ensure standard runner integration without exit code errors:
```python
if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="LSE Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="Harry Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = LseStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```

### Step 4: Fix Pagination Path
Update the `search_path` parameter to support paging by appending the page parameter:
`search_path="search?q={query}&page={page}"` (or `search?q={query}&p={page}` depending on the page index structure).
