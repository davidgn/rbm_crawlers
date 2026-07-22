# KCL Student Union Spider Migration Analysis

**Agent**: `explorer_m2_1_gen2`  
**Working Directory**: `/opt/repos/rbm_crawlers/.agents/explorer_m2_1_gen2`  
**Scope**: Codebase analysis & migration strategy for KCL Student Union Spider (`src/kcl_student_union_spider.py`) to transition from `HTMLSearchSpider` to `PlaywrightSearchSpider` and handle site search mapping.

---

## 1. Executive Summary

This report analyzes the KCL Student Union spider and outlines a migration strategy to transition it from `HTMLSearchSpider` to `PlaywrightSearchSpider`. Like other UK student union websites (such as LSE Student Union), KCLSU (`https://www.kclsu.org`) is hosted on the MSL (Membership Solutions Ltd) platform. MSL platforms utilize anti-bot WAF protections (such as Cloudflare) that block raw HTTP clients (like the one used in `HTMLSearchSpider`) with `403 Forbidden` responses. 

To crawl this site successfully, we must migrate the spider to subclass `PlaywrightSearchSpider`, which uses a headless browser context with stealth plug-ins to bypass Cloudflare. Additionally, we need to map the search path and query parameters to support pagination and define explicit selectors to ensure the item parser operates correctly.

---

## 2. Current Implementation Analysis

The spider is defined in `src/kcl_student_union_spider.py` as:

```python
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

### Key Deficiencies:
1. **HTTP Client Blocked**: It inherits from `HTMLSearchSpider`, which uses `curl_cffi.requests` to send HTTP requests. This fails to bypass the Cloudflare challenge page returned by `www.kclsu.org`.
2. **Missing Selectors**: It passes no `selectors` dictionary. While `HTMLSearchSpider` has heuristic fallbacks to parse any anchor tags (`<a>`) and search parent elements for price patterns, `PlaywrightSearchSpider` requires explicit selectors mapping `container`, `title`, `link`, `price`, and `author` (specifically, it will fail to parse items without a defined `title` selector).
3. **No Pagination Support**: The current `search_path` is `"search?q={query}"`. Since it lacks the `{page}` parameter, it cannot load subsequent pages, causing page 1 to be crawled repeatedly for all pagination iterations.

---

## 3. Base Class Analysis: `PlaywrightSearchSpider`

The `PlaywrightSearchSpider` class (`src/playwright_search_spider.py`) provides the following functionality:

### Search & Navigation Loop (`run()`):
1. **Stealth Browser Initialization**: Runs a synchronous Playwright instance, launching a browser context with stealth options via `Stealth().apply_stealth_sync(page_ctx)`.
2. **URL Construction**: Formats the `search_path` for each page using:
   ```python
   url = url_template.format(
       query=search_term.replace(' ', '+'), 
       search_term=search_term.replace(' ', '+'), 
       page=page_num
   )
   ```
3. **Navigation**: Navigates to the constructed URL and checks for status codes `404` or `400` to break the pagination loop.
4. **Lazy Loading / Scrolling**: Scrolls to the bottom (`window.scrollTo(0, document.body.scrollHeight)`) and sleeps for 2 seconds to trigger dynamic scripts and content loading.
5. **Item Extraction**: If `container` selector is provided in `self.selectors`, it runs `soup.select(self.selectors['container'])`. If not, it falls back to parsing all page anchor tags (`soup.find_all('a', href=True)`).
6. **Polite Delay**: Imposes a 1-second delay between pages.

### Item Parsing (`_parse_item()`):
- **Title**: Selects from the item container using `self.selectors['title']` (required; returns early if absent).
- **Link**: Selects from `self.selectors.get('link', 'a')` href attribute and joins it with the `base_url` to form the full listing URL.
- **Price**: Selects from `self.selectors['price']`, extracts the numeric part using regex (`\d[\d\.,]*`), normalizes comma decimals, and falls back to extracting currency codes if `price_currency` is empty.
- **Author**: Selects from `self.selectors['author']` and removes `"By "` prefix.
- **ISBN**: Extracts ISBN from the detail URL path using `isbn_from_url`.
- **Saving**: Wraps everything inside a `BookListing` pydantic model and saves it.

---

## 4. KCLSU Search Interface Investigation

The Membership Solutions Ltd (MSL) platform hosting `www.kclsu.org` handles site searches as follows:

- **Path**: `/search` or `/search/`
- **Query Parameter**: `q` (holds the raw search keywords)
- **Formatting**: Spaces in search keywords are replaced by `+` in URL query parameters.
- **Pagination Parameter**: Standard MSL platform search pagination relies on query parameter `page` or `p`. Incorporating both `{query}` and `{page}` ensures that the url is formatted properly for page numbers.
- **Example Search URL**: `https://www.kclsu.org/search?q=chemistry&page=2`

---

## 5. Search Query Mapping to Search Path

To map the search query successfully in `PlaywrightSearchSpider`, we should change the `search_path` configuration to:
```python
search_path="search?q={query}&page={page}"
```

This ensures that the `format` call inside `PlaywrightSearchSpider.run()` correctly interpolates:
- `{query}` -> the url-encoded search query (e.g. `Harry+Potter`).
- `{page}` -> the current page number (e.g. `1`, `2`, `3`).

---

## 6. Recommended Selectors for MSL Platform (KCLSU)

Since MSL platform structures are shared across LSE and KCLSU, we should adopt the same robust set of CSS selectors with fallbacks to match MSL elements:

| Selector Field | Target Selector(s) | Description |
|---|---|---|
| **`container`** | `.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row` | Card or list item wrapper containing individual search result. |
| **`title`** | `.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a` | Inner anchor or header containing the item name/title. |
| **`link`** | `.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a` | Anchor element referencing the product detail page. |
| **`price`** | `.msl-search-result-price, .price, .product-price, .item-price, span.price` | Wrapper containing price information (e.g., `£5.00`). |
| **`author`** | `.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text` | Element containing the author's name. |

---

## 7. Migration Proposal

### Proposed Code Structure for `src/kcl_student_union_spider.py`

```python
import argparse
from playwright_search_spider import PlaywrightSearchSpider

class KclStudentUnionSpider(PlaywrightSearchSpider):
    """
    Playwright-based search spider for KCL Student Union to bypass WAF challenges.
    """
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="KCL Student Union (King's College London)",
            base_url="https://www.kclsu.org",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row',
                'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a',
                'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
                'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price',
                'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text'
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
