## 2026-07-05T15:13:09Z
**Context**: Milestone 1 (UPenn Bookstore Used Spider Migration) implementation phase.
**Objective**: Fix the 7 defects identified in `/opt/repos/rbm_crawlers/.agents/sub_orch_m1/validation_synthesis.md` across the codebase, specifically targeting `src/upenn_bookstore_used_spider.py`, `src/playwright_search_spider.py`, `src/isbn_utils.py`, `src/signal_scavenger.py`, and the test suites.
**Input Information**:
- Predecessor's validation synthesis: `/opt/repos/rbm_crawlers/.agents/sub_orch_m1/validation_synthesis.md`
- Source files: `src/upenn_bookstore_used_spider.py`, `src/playwright_search_spider.py`, `src/isbn_utils.py`, `src/signal_scavenger.py`
- Test files: `tests/test_adversarial_upenn.py`, `tests/test_upenn_adversarial.py`, `tests/test_upenn_bookstore_used_spider.py`, `tests/verify_upenn_spider.py`
- Working Directory: `/opt/repos/rbm_crawlers/.agents/worker_m1_4`

**Tasks**:
1. Initialize your BRIEFING.md and progress.md in your working directory.
2. Read the validation synthesis `/opt/repos/rbm_crawlers/.agents/sub_orch_m1/validation_synthesis.md` and check each of the 7 identified defects.
3. Fix the price extraction logic in `src/playwright_search_spider.py` to extract the correct sale price/used price by checking context windows or multiple price elements when dual prices are present (original vs sale/used or new vs used). Use `soup.select` instead of `select_one` for price elements if needed to check all matching price tags.
4. Support bare ISBN-10s (with and without hyphens/separators) in text scavenging (`src/signal_scavenger.py` and `src/isbn_utils.py`). Update `ISBN_PATTERN` in `src/signal_scavenger.py` to match bare 10-digit patterns (e.g. `\b\d{9}[\dX]\b` and `\b\d[\d-]{8,12}[\dX]\b`) and validate them with `normalize_isbn` (which checks `valid_isbn10` checksum).
5. Ensure `_parse_item` in `src/playwright_search_spider.py` gracefully exits and returns `None` without raising Pydantic validation errors when required fields are missing.
6. Verify and correct all test assertions in `tests/test_adversarial_upenn.py` and `tests/test_upenn_adversarial.py` to align with the correct/fixed behaviors.
7. Run all of these tests (using `pytest` or `python -m unittest` commands) to ensure they pass:
   - `tests/test_adversarial_upenn.py`
   - `tests/test_upenn_adversarial.py`
   - `tests/test_upenn_bookstore_used_spider.py`
   - `tests/verify_upenn_spider.py`
8. Write a clear, detailed handoff report (`handoff.md`) in your working directory summarizing:
   - What changes were made to each file and the rationale.
   - Command run to execute the tests and the verbatim test results.
   - Any remaining observations.
9. Send a message to the sub-orchestrator (conv ID: 6da745b0-81d9-40a9-ad25-ee6ba350f488) when done.

**MANDATORY INTEGRITY WARNING**:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.
