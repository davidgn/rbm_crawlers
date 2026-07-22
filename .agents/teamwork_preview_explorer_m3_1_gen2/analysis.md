# LSE Student Union Spider Migration Analysis (Milestone 3)

**Agent**: `explorer_m3_1_gen2`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/teamwork_preview_explorer_m3_1_gen2`  
**Scope**: Codebase analysis & migration strategy for the LSE Student Union Spider (`src/lse_student_union_spider.py`) to crawl `https://www.lsesu.com` successfully using Playwright.

---

## 1. Executive Summary

This report documents our codebase analysis of the LSE Student Union spider and details a strategy to transition it from `HTMLSearchSpider` to `PlaywrightSearchSpider`. 

The target website `https://www.lsesu.com` is hosted on the MSL (Membership Solutions Ltd) platform. MSL websites are heavily protected by modern Web Application Firewalls (such as Cloudflare), which block basic HTTP requests (like those used by `HTMLSearchSpider` via `curl_cffi` requests) with `403 Forbidden` responses. Migrating to `PlaywrightSearchSpider` resolves this by executing crawls within a headless browser with stealth configurations to bypass Cloudflare.

Through independent verification:
1. We validated that the current spider inherits from `HTMLSearchSpider` and lacks explicit CSS selectors, which will cause `PlaywrightSearchSpider` to abort execution immediately.
2. We audited the repository and confirmed that **no pre-existing cached HTML or mock files** for `lsesu.com` exist.
3. We verified that running `pytest` directly at the project root level fails due to missing modules/spiders (e.g. `aladin_retail_spider`, `extract_book_text_signals`, `shopee_ph_books_spider`) in the python path or missing files, but targeting specific test modules with the `PYTHONPATH=src` prefix works perfectly (e.g., `PYTHONPATH=src pytest tests/test_isbn_utils.py` passes).
4. We verified that legacy tests like `tests/test_taiwan_spiders.py` fail (specifically `test_eslite_json_parser_extracts_offer` and `test_bookconekt_detail_parser_extracts_offer`) because they assert currency-prefixed pricing (e.g., `"TWD 2199"`, `"XOF 5000"`) whereas the current model split separates price as numeric value and price_currency as the ISO currency code.
5. We formulated a concrete migration design including CSS selectors for the MSL platform, pagination corrections, and local test mock harness.

---

## 2. Current Codebase & Architecture Analysis

The file `src/lse_student_union_spider.py` contains:
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

### Architectural Deficiencies:
1. **Cloudflare Blocking**: Inheriting from `HTMLSearchSpider` relies on `curl_cffi` HTTP client requests, which trigger Cloudflare WAF challenges. Migrating to `PlaywrightSearchSpider` resolves this via headless browser automation.
2. **Missing CSS Selectors**: `PlaywrightSearchSpider` requires explicit CSS selectors in `self.selectors` (specifically `container` and `title`). If these are missing, the base class parser aborts parsing (`playwright_search_spider.py:113-116`).
3. **Pagination Defect**: The `search_path` is set to `"search?q={query}"`, which lacks the `{page}` formatting key. In `PlaywrightSearchSpider.run` (line 56), page navigation will fail to format or loop page 1 repeatedly.
4. **CLI Argument Parser**: The `__main__` entry point does not support CLI arguments like `--query`, `--limit-pages`, and `--limit-items`. This is a mismatch with the wider runner interface.

---

## 3. Recommended Selectors & Price/Currency Separation

To parse search results from MSL platform and generic student union marketplaces, we define resilient, comma-separated CSS selectors:

| Target Field | Selector String | Logic & Fallback Details |
|---|---|---|
| **`container`** | `.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row` | Matches standard MSL search lists, custom student union store grids, or generic listing layouts. |
| **`title`** | `.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a` | Targets title anchor tags inside the container element. |
| **`link`** | `.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a` | Targets the main href link of the item. Defaults to any anchor tag inside. |
| **`price`** | `.msl-search-result-price, .price, .product-price, .item-price, span.price` | Extracts price text (e.g. `"£12.50"`). |
| **`author`** | `.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text` | Targets author metadata elements (e.g. `"By J.K. Rowling"`). |

### Price and Currency Separation Strategy:
1. **Currency Mapping**: `price_currency` in the constructor is explicitly set to `"GBP"`.
2. **Price Extraction**: `PlaywrightSearchSpider._parse_item` uses `re.search(r"\d[\d\.,]*", price_text)` to extract only the numeric digits from the price element, converting European format if necessary.
3. **Pydantic Model Compliance**: When `BookListing` is created, `price` is set to the numeric string (e.g., `"12.50"`) and `price_currency` is set to `"GBP"`.

---

## 4. Test & Cache Audit Findings

1. **No Cache/Mock Files**: We confirmed that **no pre-existing cached HTML or mock files** exist in the repository (e.g., under `tests/fixtures/` or root) for `lsesu.com` or the LSE Student Union spider.
2. **Test Environment Behavior**:
   - Running `pytest` at the root folder causes collection errors because of missing modules/spiders (e.g., `aladin_retail_spider` imported in `test_aladin_spiders.py`).
   - Running specific test modules with the prefix `PYTHONPATH=src` works. Example: `PYTHONPATH=src pytest tests/test_isbn_utils.py` passes all 56 tests.
   - Legacy tests in `tests/test_taiwan_spiders.py` (specifically `test_eslite_json_parser_extracts_offer` and `test_bookconekt_detail_parser_extracts_offer`) fail under the current codebase:
     - `test_eslite_json_parser_extracts_offer` fails with: `AssertionError: assert '2199.00' == 'TWD 2199'`
     - `test_bookconekt_detail_parser_extracts_offer` fails with: `AssertionError: assert '5000' == 'XOF 5000'`
     This happens because these legacy tests assert currency-prefixed price strings, whereas the refactored codebase successfully isolates pricing as clean numeric strings (`"2199.00"`, `"5000"`) and populates the currency separately in the schema.


---

## 5. Migration Strategy

The migration should be performed in the following sequence without changing codebase files until the implementer starts:

### Step 1: Base Class Refactoring
Import `PlaywrightSearchSpider` and subclass `LseStudentUnionSpider` from it:
```python
from playwright_search_spider import PlaywrightSearchSpider

class LseStudentUnionSpider(PlaywrightSearchSpider):
```

### Step 2: Initialize Constructor with Selectors
Update the constructor to pass the recommended selectors dictionary and configuration parameters to the parent class:
```python
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        selectors = {
            'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row',
            'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a',
            'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
            'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price',
            'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text'
        }
        super().__init__(
            platform_name="LSE Student Union",
            base_url="https://www.lsesu.com",
            search_path="search?q={query}&page={page}",
            selectors=selectors,
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )
```

### Step 3: Integrate CLI Argument Parser in `__main__`
Replace the basic `__main__` runner with standard argument parsing to support programmatic CLI control:
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

---

## 6. Verification and Local Test Design

To verify the parser's logic offline (due to `CODE_ONLY` network isolation constraints), we design a unit test that mocks the parsing layer using BeautifulSoup.

### Proposed Test Module (`tests/test_lse_student_union_spider.py`):
```python
import pytest
from bs4 import BeautifulSoup
from lse_student_union_spider import LseStudentUnionSpider

def test_lse_student_union_spider_parse_item():
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">£34.99</span>
      <span class="msl-search-result-author">By N. Gregory Mankiw</span>
    </div>
    """
    
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    
    assert item.title == "Introduction to Economics"
    assert item.listing_url == "https://www.lsesu.com/books/textbook-123"
    assert item.price == "34.99"
    assert item.price_currency == "GBP"
    assert item.author == "N. Gregory Mankiw"
    assert item.territory == "United Kingdom"
    assert item.platform == "LSE Student Union"
```
