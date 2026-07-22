## 2026-06-29T12:53:18Z
You are Worker 1 assigned to Milestone 1: Build Bosnia Spider (`src/olx_ba_spider.py`).
Your working directory is /opt/repos/rbm_crawlers/.agents/teamwork_preview_worker_m1_1. Please create and maintain your progress.md and handoff.md there.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.

Context & Findings from Explorers:
- Explorer reports in `/opt/repos/rbm_crawlers/.agents/teamwork_preview_explorer_m1_2/handoff.md` and `/opt/repos/rbm_crawlers/.agents/teamwork_preview_explorer_m1_3/handoff.md` detail the structure of `olx.ba`.
- Target site: `https://olx.ba` (specifically books category / pretraga).
- Existing related files in `src/`: `bosnia_olx_spider.py` and `olx_ba_books_spider.py`.
- Architecture requirements: Must subclass `BaseSpider` (or `HTMLSearchSpider`/`PlaywrightSearchSpider`), use `_get_robust_response` for resilient fetching with backoff, and instantiate `BookListing` models with numerical `price` and `price_currency="BAM"` (Bosnian Convertible Mark).
- Details extraction: Parse SSR JSON-LD (`application/ld+json`) Product objects or metadata, extract title, price, BAM currency, URL, and scavenge ISBN from descriptions.

Tasks:
1. Create/Implement `src/olx_ba_spider.py` (and align `bosnia_olx_spider.py` to alias or import it for backward compatibility).
2. Run execution and tests: Execute `python3 src/olx_ba_spider.py` (or unit/integration tests) to verify execution completes without exceptions and generates valid listings.
3. Write complete execution log, build/test results, and handoff documentation in `/opt/repos/rbm_crawlers/.agents/teamwork_preview_worker_m1_1/handoff.md` and send a message when done.
