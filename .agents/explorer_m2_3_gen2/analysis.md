# KCL Student Union Spider Migration Analysis

**Agent**: `explorer_m2_3_gen2`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/explorer_m2_3_gen2`  
**Scope**: Codebase analysis & migration strategy for KCL Student Union Spider (`src/kcl_student_union_spider.py`) to crawl `https://www.kclsu.org` successfully using Playwright.

---

## 1. Executive Summary

This report documents the codebase analysis of the KCL Student Union spider and outlines a migration strategy to transition it from `HTMLSearchSpider` to `PlaywrightSearchSpider`. The King's College London Student Union website (`https://www.kclsu.org`) is hosted on the MSL (Membership Solutions Ltd) platform. MSL sites are heavily protected by modern Web Application Firewalls (WAFs) such as Cloudflare, which block standard HTTP client requests (e.g. `httpx`/`requests` impersonations in `HTMLSearchSpider`) with HTTP 403 Forbidden errors or Cloudflare challenge screens.

Migrating to `PlaywrightSearchSpider` will run crawls using a headless browser with stealth configurations to bypass Cloudflare protection. Since `PlaywrightSearchSpider` requires explicit CSS selectors (it does not fallback to general link parsing like `HTMLSearchSpider`), this analysis identifies a robust set of fallback selectors to capture `container`, `title`, `link`, `price`, and `author` information, ensuring that price values and the `'GBP'` currency code are cleanly separated.

---

## 2. Current Codebase Analysis

The target file `src/kcl_student_union_spider.py` currently has the following implementation:

```python
# Location: src/kcl_student_union_spider.py
from html_search_spider import HTMLSearchSpider

class KclStudentUnionSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="KCL Student Union (King's College London)",
            base_url="https://www.kclsu.org",
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
    spider = KclStudentUnionSpider(limit_pages=1, limit_items=5)
    spider.run()
```

### Architectural Deficiencies
1. **Cloudflare Blocking**: It inherits from `HTMLSearchSpider`, which uses `curl_cffi` requests. This fails with `403 Forbidden` on the heavily-protected MSL-based `kclsu.org` platform.
2. **Missing Selectors**: It passes no `selectors` dictionary. While `HTMLSearchSpider` falls back to general `find_all('a', href=True)` link harvesting and heuristic parent-price searching, `PlaywrightSearchSpider` requires explicit CSS selectors. If `container` or `title` selectors are missing in `PlaywrightSearchSpider`, execution terminates immediately.
3. **No Pagination Support**: The `search_path` is configured as `"search?q={query}"` which lacks the `{page}` parameter. Consequently, the spider crawls page 1 repeatedly across all pagination steps.
4. **Non-Standard CLI Arguments**: The original `__main__` entrypoint does not parse CLI options (e.g., `--limit-pages`, `--limit-items`, or `--query`), causing failure or argument mismatches when executed via automated sweep scripts.

---

## 3. Selector Identification Strategy

The KCLSU site runs on the MSL platform. For search results on MSL sites and general textbook/C2C listing widgets, a list of robust, fallback CSS selectors should be specified in the `selectors` dictionary. Using comma-separated lists in CSS selectors allows the scraper to match multiple structures (MSL platform search list, custom shop grid, or generic e-commerce layouts).

### Recommended Selectors Table

| Field | Purpose | Recommended Selector string (with Fallbacks) | Rationale |
|---|---|---|---|
| **`container`** | Identifies the container element for each item. | `.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row, .msl-book-item, .msl-book-card, .msl-book-listing` | Matches standard MSL search result containers, generic search list cards, and book listing grids. |
| **`title`** | Extracts the book title text. | `.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a, .msl-book-title a` | Extracts title from nested headers or designated title links inside each container. |
| **`link`** | Finds the relative or absolute detail URL. | `.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a` | Targets the anchor tag containing the product/detail link. Falls back to a general anchor inside the container. |
| **`price`** | Locates the element containing price details. | `.msl-search-result-price, .price, .product-price, .item-price, span.price, .msl-book-price` | Extracts price text (e.g. "£12.50"). `PlaywrightSearchSpider` will parse the numerical digits out of this text. |
| **`author`** | Locates the book author info. | `.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text, .msl-book-author` | Extracts author names (e.g. "By J.K. Rowling"). Base class cleans "By " prefixes automatically. |

---

## 4. Price & Currency Separation Strategy

To ensure strict schema compliance with the `BookListing` pydantic model:
1. **Price Cleanliness**: `PlaywrightSearchSpider._parse_item` uses regular expressions (`re.search(r"\d[\d\.,]*", price_text)`) to extract ONLY the numeric digits and decimal separators from the price element, converting European comma decimals if necessary.
2. **ISO Currency Code Separation**:
   - `price_currency` is explicitly set to `"GBP"` in the constructor.
   - When instantiating `BookListing`, the raw price text is cleaned of the `"£"` symbol, storing only the numeric string (e.g. `"12.50"`) in the `price` field, and the standard ISO currency code `"GBP"` in the `price_currency` field.
   - This prevents currency contamination in the price field.

---

## 5. Migration Strategy

To perform the migration without writing code, we define the exact design steps for the implementation phase:

### Step 1: Subclass Refactoring
Change `KclStudentUnionSpider` to inherit from `PlaywrightSearchSpider` imported from `playwright_search_spider`.

### Step 2: Configure Constructor & Selectors
Modify the spider constructor to initialize with the recommended CSS selectors:
```python
        selectors = {
            'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row, .msl-book-item, .msl-book-card, .msl-book-listing',
            'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a, .msl-book-title a',
            'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
            'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price, .msl-book-price',
            'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text, .msl-book-author'
        }
```

### Step 3: Implement CLI Argument Parser
Update the `__main__` block to use `argparse.ArgumentParser` with `parse_known_args()` to ensure standard runner integration without exit code 2 errors:
```python
if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="KCL Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="Harry Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = KclStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```

### Step 4: Fix Pagination Path
Update the `search_path` parameter to support paging by appending the page parameter:
`search_path="search?q={query}&page={page}"` (or `search?q={query}&p={page}`).

---

## 6. Proposed Source Code Migration

Below is the complete proposed code for `src/kcl_student_union_spider.py` after migration:

```python
import argparse
from playwright_search_spider import PlaywrightSearchSpider

class KclStudentUnionSpider(PlaywrightSearchSpider):
    """
    Playwright-based spider for KCL Student Union to bypass Cloudflare 403 blocks.
    Inherits from PlaywrightSearchSpider.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="KCL Student Union (King's College London)",
            base_url="https://www.kclsu.org",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row, .msl-book-item, .msl-book-card, .msl-book-listing',
                'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a, .msl-book-title a',
                'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
                'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price, .msl-book-price',
                'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text, .msl-book-author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="KCL Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="Harry Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = KclStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```
