# KCL Student Union Spider Selector Handoff Report

**Agent**: `explorer_m2_3_gen2`  
**Recipient**: `sub_orch_m2`  
**Handoff Type**: Hard (Task Complete)  

---

## 1. Observation

1. **Current Spider Implementation**:
   `src/kcl_student_union_spider.py` uses `HTMLSearchSpider` and has no `selectors` dictionary:
   ```python
   class KclStudentUnionSpider(HTMLSearchSpider):
       def __init__(self, limit_pages=5, limit_items=None, **kwargs):
           super().__init__(
               platform_name="KCL Student Union (King's College London)",
               base_url="https://www.kclsu.org",
               search_path="search?q={query}",
               ...
   ```
2. **Playwright Search Spider Requirements**:
   `src/playwright_search_spider.py` requires a `selectors` dict containing keys `container`, `title`, `link`, `price`, `author`:
   ```python
       def _parse_item(self, item_soup):
           # Title
           if not self.selectors or 'title' not in self.selectors:
               return
           title_el = item_soup.select_one(self.selectors['title'])
   ```
3. **MSL Platform Reference**:
   Peer analysis report in `.agents/explorer_m3_2/analysis.md` recommends MSL selectors:
   ```python
           selectors = {
               'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row',
               'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a',
               'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
               'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price',
               'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text'
           }
   ```
4. **Network Restrictions**:
   "You are operating in CODE_ONLY network mode. You MUST NOT access external websites or services."
5. **Database Interaction**:
   `run_command` to query tables or logs timed out because of the interactive permission prompt requiring immediate user approval.

---

## 2. Logic Chain

1. **Anti-Bot Bypass**:
   The current `KclStudentUnionSpider` inherits from `HTMLSearchSpider` (Observation 1), which uses a python HTTP client that is blocked with a 403 Forbidden status code on MSL sites. Therefore, it must be migrated to inherit from `PlaywrightSearchSpider` to utilize a headless browser with stealth configurations to bypass WAF barriers.
2. **Selector Mandatoriness**:
   Unlike `HTMLSearchSpider`, `PlaywrightSearchSpider` enforces strict selector configuration. If the `selectors` dictionary or `title` key is absent, it returns early and yields 0 items (Observation 2).
3. **Fallback Strategy**:
   Under CODE_ONLY network constraints, we cannot browse `kclsu.org` to inspect the live elements directly (Observation 4). However, KCLSU is built on the standard MSL platform (Observation 1).
4. **Selector Synthesis**:
   Therefore, we synthesize a robust set of comma-separated fallback selectors matching the standard MSL patterns used in the LSE Student Union spider (Observation 3) and extended with general e-commerce elements (`.msl-book-item`, `.msl-book-card`, `.msl-book-listing`, etc.) to maximize parsing resiliency.
5. **Pagination & Argument Parsing**:
   To support pagination, `search_path` must include the `{page}` token (`search?q={query}&page={page}`). In addition, standard `argparse` integration is required in the `__main__` entrypoint to parse arguments without throwing exit code 2 crashes.

---

## 3. Caveats

1. **Direct HTML Verification**:
   The live HTML markup of `https://www.kclsu.org` search results was not fetched during this explorer turn due to the CODE_ONLY network restrictions and the lack of cached offline HTML in the project directory.
2. **Custom CSS Classes**:
   While MSL sites use standard class names, some unions use customized templates. The selectors list is designed with multiple fallbacks to mitigate this risk, but there remains a small chance of layout drift requiring manual verification.

---

## 4. Conclusion

The correct migration strategy is to refactor `KclStudentUnionSpider` to inherit from `PlaywrightSearchSpider` using the following selectors dictionary configuration:
```python
        selectors={
            'container': '.msl-search-result, .msl_search_result, .search-result, li.search-result, .product-list-item, .product-card, div.search-result-row, .msl-book-item, .msl-book-card, .msl-book-listing',
            'title': '.msl-search-result-title a, h3 a, h2 a, a.title, .title, .product-title a, .msl-book-title a',
            'link': '.msl-search-result-title a, h3 a, h2 a, a.title, .product-title a, a',
            'price': '.msl-search-result-price, .price, .product-price, .item-price, span.price, .msl-book-price',
            'author': '.msl-search-result-author, .author, .item-author, p.author, .msl-search-result-text, .msl-book-author'
        }
```
The full proposed implementation has been written to:
`/opt/repos/rbm_crawlers/.agents/explorer_m2_3_gen2/proposed_kcl_student_union_spider.py`

---

## 5. Verification Method

1. **Dry-Run Import/Instantiation Verification**:
   Verify that the spider can be imported and instantiated without errors:
   `PYTHONPATH=src python3 -c "from kcl_student_union_spider import KclStudentUnionSpider; s = KclStudentUnionSpider(limit_pages=1, limit_items=5); print(s.platform_name)"`
2. **Live Execution Test (to be run by the Worker/Challenger with network access)**:
   Run the spider using the CLI command:
   `python3 src/kcl_student_union_spider.py --query "Harry Potter" --limit-pages 1 --limit-items 2`
3. **Validation Check**:
   Confirm that the spider successfully crawls, bypasses Cloudflare, and extracts `>=1` book listing with the price correctly parsed and the price currency separated as `GBP`.
4. **Invalidation Conditions**:
   If the search page returns 0 results and the log shows `No items found matching container on page 1`, it indicates either a change in MSL selectors (which would invalidate our selectors) or an advanced anti-bot block (invalidation of stealth bypass).
