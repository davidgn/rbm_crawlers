# UPenn Bookstore Used Spider Migration Analysis

## Executive Summary
This analysis outlines the strategy to migrate `src/upenn_bookstore_used_spider.py` from `HTMLSearchSpider` to `PlaywrightSearchSpider` to successfully bypass HTTP 403 blocks on `https://upenn.bncollege.com`. The recommended migration includes adding custom CSS selectors, paginating via `{page}` tokens, and standardizing the command-line argument parser to prevent runner execution failures.

---

## 1. Current State of the Spider
The existing implementation of `UpennBookstoreUsedSpider` in `src/upenn_bookstore_used_spider.py` is minimal and inherits from `HTMLSearchSpider` without explicitly defining DOM selectors:

```python
# Location: src/upenn_bookstore_used_spider.py (all lines 1-21)
from html_search_spider import HTMLSearchSpider

class UpennBookstoreUsedSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UPenn Bookstore",
            base_url="https://upenn.bncollege.com",
            search_path="search?q={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UpennBookstoreUsedSpider(limit_pages=1, limit_items=5)
    spider.run()
```

### Key Technical Issues
1. **Cloudflare & WAF Blocks (403)**: B&N College Bookstore websites are highly protected. Standard HTTP clients (like the `curl_cffi` session in `HTMLSearchSpider`) are blocked with HTTP 403 Access Denied when querying their search endpoints.
2. **Missing CSS Selectors**: The spider specifies no selectors, forcing the crawler into fallback parsing mode. This fallback relies on extracting raw `a` elements and attempting price matching on container parents, which degrades accuracy and performance.
3. **Unformatted Pagination**: The `search_path` is `"search?q={query}"` which lacks a `{page}` placeholder. In pagination sweeps, this causes page 1 to be repeatedly fetched up to `limit_pages`.
4. **Non-Standard CLI Arguments**: The original `__main__` entrypoint does not parse CLI options (e.g., `--limit-pages`, `--limit-items`, or `--query`), causing failure or argument mismatches when executed via automated sweep scripts.

---

## 2. Playwright Migration Strategy
By migrating to `PlaywrightSearchSpider`, the crawler executes a headless Chromium browser using the stealth plugin `playwright_stealth` to mimic a human browser session, which successfully bypasses the 403 anti-bot challenge page.

### 2.1 Proposed CSS Selectors
The B&N College Bookstore platform uses modern client-side rendering (React-based). To ensure robust selector matching, we propose a multi-selector fallback strategy using comma-separated CSS paths:

| Field | Selector Path | Rationale & Alternatives |
|---|---|---|
| **container** | `div.product-card, div.product-tile, div.bnc-product-card, div.search-result-item, div[class*="product-card"], div[class*="ProductCard"]` | Matches grid card containers containing book items. |
| **title** | `.product-title, .product-card-title, h3.product-title, h3.product-card-title, a.product-title, a[class*="title"], [class*="product-title"]` | Targets headers or anchor tags containing the book title. |
| **link** | `a.product-title, .product-title a, a[class*="title"], a` | Extracts the listing detail page URL from inside the item container. |
| **price** | `.price, .product-price, .product-card-price, span[class*="price"], .bnc-price, .price-display` | Identifies standard and styled price values inside the card. |
| **author** | `.author, .product-author, .product-card-author, [class*="author"], .by-author` | Targets the author details (stripped of prefix words like "By"). |

---

## 3. Interface & Runner Standardization
To align with the project interface contracts and prevent exit-code-2 crashes during sweeping, the spider entrypoint must use `argparse` with `parse_known_args()`:

```python
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="UPenn Bookstore Used Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args, _ = parser.parse_known_args()

    spider = UpennBookstoreUsedSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```

Additionally, the `search_path` must include the `{page}` placeholder token to enable correct multi-page pagination. For B&N College search endpoints, the parameter is `page`:
`search_path = "search?q={query}&page={page}"`

---

## 4. Proposed Source Code Migration
The full proposed implementation is written to `/opt/repos/rbm_crawlers/.agents/explorer_m1_3/proposed_upenn_bookstore_used_spider.py` and the patch diff to `/opt/repos/rbm_crawlers/.agents/explorer_m1_3/upenn_bookstore_used_spider.patch`.

Below is the complete migrated code mapping:

```python
# Proposed Location: src/upenn_bookstore_used_spider.py
import argparse
from playwright_search_spider import PlaywrightSearchSpider

class UpennBookstoreUsedSpider(PlaywrightSearchSpider):
    """
    Playwright-based spider for UPenn Bookstore to bypass 403 blocks.
    Inherits from PlaywrightSearchSpider.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="UPenn Bookstore",
            base_url="https://upenn.bncollege.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': 'div.product-card, div.product-tile, div.bnc-product-card, div.search-result-item, div[class*="product-card"], div[class*="ProductCard"]',
                'title': '.product-title, .product-card-title, h3.product-title, h3.product-card-title, a.product-title, a[class*="title"], [class*="product-title"]',
                'link': 'a.product-title, .product-title a, a[class*="title"], a',
                'price': '.price, .product-price, .product-card-price, span[class*="price"], .bnc-price, .price-display',
                'author': '.author, .product-author, .product-card-author, [class*="author"], .by-author'
            },
            territory="United States",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="UPenn Bookstore Used Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args, _ = parser.parse_known_args()

    spider = UpennBookstoreUsedSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
```
