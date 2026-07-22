# Changes Log — worker_m4_fix

## Modified Files

1. **`src/playwright_search_spider.py`**
   - **Lines modified**: 132-143
   - **Description**: Replaced naive comma-stripping regex matching (`re.search(r"[\d,]+(?:\.\d+)?", price_text)` and `.replace(",", "")`) with robust European comma-decimal and standard dot-decimal price parsing logic.
   - **Implementation Details**:
     - Extract raw numeric substring via `re.search(r"\d[\d\.,]*", price_text)` and strip trailing punctuation (`.rstrip(".,")`).
     - If both commas and periods exist: check whether comma is decimal separator (`rfind(",") > rfind(".")`, e.g. `"1.234,99"`) or thousands separator (`"1,234.99"`). Convert accordingly.
     - If only comma exists: treat as European decimal separator (`"15,99"` -> `"15.99"`).
     - If only period or plain integer exists: preserve clean float string (`"15.99"` -> `"15.99"`).

2. **`src/alibris_uk_spider.py`**
   - **Lines modified**: 12
   - **Description**: Added `&page={page}` pagination parameter to `search_path` template (`"booksearch?keyword={query}&mtype=B&page={page}"`).

3. **`src/portaldoslivreiros_spider.py`**
   - **Lines modified**: 13
   - **Description**: Added `&page={page}` pagination parameter to `search_path` template (`"busca.asp?palavra={query}&page={page}"`). Note: `src/portal_dos_livreiros_spider.py` inherits directly from this class.

4. **`src/fnac_p_t_spider.py`**
   - **Lines modified**: 12
   - **Description**: Added `&page={page}` pagination parameter to `search_path` template (`"SearchResult/ResultList.aspx?Search={query}&page={page}"`). Note: `src/fnac_pt_spider.py` inherits directly from this class.

5. **`/opt/repos/rbm_crawlers/.agents/challenger_m4_2/test_migrated_spiders.py`**
   - **Lines modified**: 120-129
   - **Description**: Updated `test_comma_price_parsing_defect` to assert `self.assertEqual(listing.price, "15.99")` and added `test_pagination_template_formatting` to verify `{page}` parameter in `search_path` across all target spiders.
