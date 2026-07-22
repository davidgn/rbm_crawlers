## 2026-07-05T05:51:31Z
Context: You are the Worker (generation 3) for Milestone 1: UPenn Bookstore Used Spider Migration.
Content:
You are spawned to fix the correctness, selector, and parser bugs identified in the first iteration of validation.
Please read `/opt/repos/rbm_crawlers/.agents/sub_orch_m1/validation_synthesis.md` for a full list of issues.
Your working directory is `/opt/repos/rbm_crawlers/.agents/teamwork_preview_worker_m1_3`.

Please implement the following fixes:
1. **Link Selector**: Tighten the `'link'` selector inside `src/upenn_bookstore_used_spider.py` by removing the generic `a` fallback (e.g. use `a.product-title, .product-title a, a[class*="title"], [class*="product-title"] a`).
2. **Thousands Separator Bug**: Fix the parser in `src/playwright_search_spider.py` so that commas acting as thousands separators (e.g. `$1,250`) are not incorrectly replaced with decimal dots.
3. **Dual Price Mismatch**: Update the price parser to extract the actual sale price (lowest/last numeric group or checking text context) instead of the obsolete original price.
4. **Missing Link Graceful Exit**: In `src/playwright_search_spider.py` (or inside the spider's `_parse_item`), check if required attributes (like listing_url) are missing before constructing a `BookListing`, and log a warning instead of raising an unhandled `ValidationError`.
5. **ISBN-10 URL/Text Scavenging**: Update `isbn_from_url` in `src/isbn_utils.py` and `ISBN_PATTERN` in `src/signal_scavenger.py` to correctly extract and normalize ISBN-10s.
6. **Author Prefix**: Make sure the "By " label prefix stripping is case-insensitive (e.g. stripping "by ", "BY ", "By ").
7. **Test Assertions**: Update the assertions in `tests/test_adversarial_upenn.py` and `tests/test_upenn_adversarial.py` to expect the corrected values (such as price `14.99` instead of `19.99`, and the actual product detail page URLs instead of category/wishlist links). Ensure all tests pass.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.

Action: Implement the fixes, run the full test suite (`tests/test_upenn_bookstore_used_spider.py`, `tests/verify_upenn_spider.py`, `tests/test_adversarial_upenn.py`, and `tests/test_upenn_adversarial.py`) to verify correctness, write `handoff.md` with your results, and reply with send_message to parent (Conversation ID: 559de788-21ba-4c2c-82f8-780fc355f13c).
