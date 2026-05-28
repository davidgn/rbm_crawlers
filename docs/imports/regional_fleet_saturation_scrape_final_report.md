# Regional Fleet Saturation Scrape: Final Documentation

## 0. Codex Audit & Continuation Update (2026-05-27)

This report was audited against the live `rbm_crawlers` workspace on 2026-05-27. Treat the original sections below as historical handoff context, not as a fully current inventory.

**Verified corrections and continuation work:**

- The crawler repo now contains **377** `src/*_spider.py` files, so the older "50+ regional spiders" statement is materially stale.
- The report's sample `verified_triage` targets are no longer all unimplemented:
  - `7788旧书` is covered by `src/jiushujie_7788_spider.py` and has existing restart-safe output/cache (`124` JSONL rows, `65` cached HTML files at audit time).
  - `Chung Hwa` is covered by `src/chunghwa_hk_spider.py`; this audit added standard `--limit-pages` / `--limit-items` CLI compatibility and hardened generic HTML parsing so linkless cards are skipped instead of emitting invalid `BookListing` rows.
  - `BeninMarketPlace — Livres` did not have a dedicated crawler; this audit added `src/beninmarketplace_spider.py` as a cache-first configured marketplace spider.
  - Benin adjacent surfaces `Bookconekt` and `La Friperie du Livre` already had crawler coverage; this audit made `Bookconekt` smoke-compatible by adding `--limit-pages` / `--limit-items`, shorter HTTP timeouts, and an attempted-URL cap so duplicate/preloaded items cannot defeat bounded smoke runs.
- Use the project venv for crawler smoke tests: `/home/davidgn/.venvs/work/bin/python`. System `/usr/bin/python3` lacks runtime dependencies such as `bs4`.

**Verification run:**

```bash
/home/davidgn/.venvs/work/bin/python scripts/smoke_spider_matrix.py \
  src/bookconekt_spider.py \
  src/chunghwa_hk_spider.py \
  src/beninmarketplace_spider.py \
  src/jiushujie_7788_spider.py \
  src/la_friperie_du_livre_spider.py \
  --timeout 45 --workers 2 --limit-pages 1 --limit-items 2 \
  --json-out logs/triage_examples_smoke_2026-05-27_final.json
```

Initial result: **5 files, 0 nonzero exits, 0 timeouts**. `BeninMarketPlace` was productive in earlier bounded runs on 2026-05-26/27 and created restart-safe output/cache; the final run added zero because those URLs had already been saved. `7788` still fetched the homepage but received `403` on `/pr/`, making it a bypass-hardening target rather than an unimplemented target.

**Continuation completed after the initial audit:**

- `Chung Hwa` was moved from the nonproductive `/search` surface to `/book/index/page/{page}` and now emits item-level rows from `div.item[href*="/book/detail/"]`. Bounded verification on 2026-05-27 scraped **20** rows into `src/data/chung hwa_listings.jsonl`.
- `BeninMarketPlace Livres` was rewritten from category-link discovery to book-product search via `/products?search=livre`; bounded verification captured the current book product `Livre "Petit Guide Motivationnel de l'Apprenant"` with seller and price into `src/data/beninmarketplace livres_listings.jsonl`.
- `7788旧书` was hardened for `onclick`-only anchors (`this.href='...'`) in `ConfigurableMarketplaceSpider`; bounded verification added **3** newly discovered detail URLs from the homepage to `src/data/7788旧书_listings.jsonl` and cached the corresponding fetches.
- `Bookconekt` and `La Friperie du Livre` remain covered but not newly productive in the final matrix. `Bookconekt` exited cleanly after slow browse probing and no new links; `La Friperie du Livre` remains a cached social-profile surface.

**Final verification run:**

```bash
/home/davidgn/.venvs/work/bin/python scripts/smoke_spider_matrix.py \
  src/chunghwa_hk_spider.py \
  src/beninmarketplace_spider.py \
  src/jiushujie_7788_spider.py \
  src/bookconekt_spider.py \
  src/la_friperie_du_livre_spider.py \
  --timeout 60 --workers 2 --limit-pages 1 --limit-items 3 \
  --json-out logs/triage_matrix_after_hardening_2026-05-27.json
```

Final result: **5 files, 0 nonzero exits, 0 timeouts**. The matrix added **3** measured `7788` rows/cache entries; non-configurable spiders (`Chung Hwa`, `BeninMarketPlace`, `Bookconekt`) report their productivity in stderr rather than the generic `output_items_added` fields.

**Current target classification after hardening:**

| Target | Status | Evidence / Next Action |
| :--- | :--- | :--- |
| `Chung Hwa` | `covered_productive` | 20 item-level rows saved; next improvement is detail-page enrichment for ISBN/publisher/year. |
| `BeninMarketPlace Livres` | `covered_productive_low_volume` | Product search yields at least one live book product; existing earlier category rows remain in JSONL and should be filtered downstream if only item-level rows are desired. |
| `7788旧书` | `covered_productive_needs_detail_parser` | Homepage onclick extraction now discovers live detail URLs; current fallback rows use URL-derived titles when detail pages are blocked/minimal. |
| `Bookconekt` | `covered_needs_browse_stability` | Existing 20 rows remain; final smoke exited cleanly but did not discover fresh links because browse probing fell back to homepage. |
| `La Friperie du Livre` | `covered_social_profile` | Profile cache is stable; richer extraction requires social-post parsing or manual/social API strategy. |

**Second continuation pass completed:**

- Installed additional local QA tooling into `/home/davidgn/.venvs/work`: `ruff 0.15.14` and `hypothesis 6.153.2`; `pytest 9.0.3` was already present.
- Added `scripts/validate_triage_outputs.py` to validate selected JSONL outputs for required fields, valid URLs, duplicate URLs, and BeninMarketPlace category leakage.
- Cleaned `src/data/beninmarketplace livres_listings.jsonl` down to item-level product rows only.
- Enriched existing `Chung Hwa` rows from detail pages with ISBN, publisher, publication date, pages, category, and price. Current count: **20** validated rows.
- Deduplicated selected triage outputs by `listing_url`. Current validated row counts:
  - `Chung Hwa`: 20
  - `BeninMarketPlace Livres`: 1
  - `7788旧书`: 129
  - `Bookconekt`: 20
  - `La Friperie du Livre`: 1
  - `Thryft Hong Kong`: 10
  - `Dont Throw Me Hong Kong Books`: 4
  - `Gabon Livre`: 40
- Stabilized `Bookconekt` browse probing by pinning the known browse URL instead of spending time across multiple fallback probes.
- Added bounded-attempt caps for `HTMLSearchSpider` and `Qiqi788Spider` so duplicate/restart-safe rows cannot defeat smoke `--limit-items`.
- Hardened `Qiqi788Spider` CLI compatibility with `--limit-pages` / `--limit-items`.

**Broader matrix verification:**

```bash
/home/davidgn/.venvs/work/bin/python scripts/smoke_spider_matrix.py \
  src/chunghwa_hk_spider.py \
  src/dontthrowme_hk_spider.py \
  src/thryft_hk_spider.py \
  src/jiushujie_7788_spider.py \
  src/qiqi788_spider.py \
  src/beninmarketplace_spider.py \
  src/bookconekt_spider.py \
  src/la_friperie_du_livre_spider.py \
  src/gabonlivre_ga_spider.py \
  --timeout 75 --workers 3 --limit-pages 1 --limit-items 3 \
  --json-out logs/broader_regional_triage_matrix_2026-05-27_final.json
```

Result: **9 files, 0 nonzero exits, 0 timeouts**. Productive additions in the final matrix: `jiushujie_7788_spider.py` added 3 rows/cache entries; `thryft_hk_spider.py` added 3 rows/cache entries. Non-configurable spiders report productivity in stderr and remain bounded.

**Validation and lint commands:**

```bash
/home/davidgn/.venvs/work/bin/python -m ruff check \
  src/chunghwa_hk_spider.py src/beninmarketplace_spider.py \
  src/jiushujie_7788_spider.py src/qiqi788_spider.py \
  src/bookconekt_spider.py src/la_friperie_du_livre_spider.py \
  src/dontthrowme_hk_spider.py src/thryft_hk_spider.py \
  src/gabonlivre_ga_spider.py src/configurable_marketplace_spider.py \
  src/html_search_spider.py scripts/validate_triage_outputs.py

/home/davidgn/.venvs/work/bin/python scripts/validate_triage_outputs.py \
  'src/data/chung hwa_listings.jsonl' \
  'src/data/beninmarketplace livres_listings.jsonl' \
  'src/data/7788旧书_listings.jsonl' \
  'src/data/bookconekt_listings.jsonl' \
  'src/data/la friperie du livre_listings.jsonl' \
  'src/data/thryft hong kong_listings.jsonl' \
  'src/data/dont throw me hong kong books_listings.jsonl' \
  'src/data/gabon livre_listings.jsonl'
```

Both commands pass after cleanup.

**APK archive note:**

`/home/davidgn/Downloads/apks.tar.xz` is a **2.1G** app-tier archive containing **47** APK/XAPK/APKM/ZIP artifacts. Inventory was written to `logs/apks_archive_inventory_2026-05-27.txt`. The archive includes relevant unresolved/app-tier targets such as BookChor, BookLal, BookLane, BookMamu, BooksPie, Duozhuayu, Kongfz, Xianyu, Pustak Market, Jiji regional apps, and multiple buyback/marketplace apps. Existing decompile workspaces are present under `research/decompiled`, `buyback-operators/decompiled`, and local JADX cache/config paths, but there is no archive-wide disassembly ledger proving all 47 artifacts have been unpacked and analyzed. Treat this archive as the next app-tier backlog source before declaring mobile/API coverage complete.

## 0.1 Taiwan BooksCompare Intake, APK Archive, and Tooling (2026-05-27)

`https://github.com/andrewmmc/bookscompare` was reviewed as a Taiwan-specific adapter reference. It is not a replacement for RBM's global crawler stack, but it is useful for endpoint and parser hardening around Taiwan retail/book rails:

- Books.com.tw / 博客來 search endpoint and result-row parsing.
- Kingstone / 金石堂 search endpoint and result-card parsing.
- Cite / 城邦讀書花園 `search_result?keywords=` HTML parsing.
- Eslite / 誠品線上 JSON API at `https://athena.eslite.com/api/v2/search?q=...`.
- Provider/fanout/test-fixture pattern worth copying conceptually, without importing the TypeScript code.

Continuation work completed from that intake:

- Added `src/eslite_tw_spider.py` for Eslite Online JSON search.
- Added `src/cite_tw_spider.py` for Cite Publishing search-result parsing.
- Reworked `src/books_tw_spider.py` away from fragile Playwright new-arrivals crawling toward the Books.com.tw search endpoint.
- Reworked `src/kingstone_spider.py` toward the Kingstone search endpoint and bypassed the local SSL verification failure seen during smoke.

Verification:

```bash
/home/davidgn/.venvs/work/bin/python scripts/smoke_spider_matrix.py \
  src/books_tw_spider.py \
  src/kingstone_spider.py \
  src/eslite_tw_spider.py \
  src/cite_tw_spider.py \
  --timeout 60 --workers 2 --limit-pages 1 --limit-items 3 \
  --json-out logs/taiwan_bookscompare_intake_smoke_2026-05-27_v2.json
```

Result: **4 files, 0 nonzero exits, 0 timeouts**. The generic matrix reports `added=None` for these non-`CONFIG` spiders, but stderr and output files confirm productive harvests. At audit time the Taiwan output files contained:

- `src/data/books_com_tw_listings.jsonl`: 13 rows.
- `src/data/kingstone_com_tw_listings.jsonl`: 104 rows.
- `src/data/eslite online_listings.jsonl`: 6 rows.
- `src/data/cite publishing_listings.jsonl`: 6 rows.

App-tier note: `/home/davidgn/Downloads/apks.tar.xz` is present and is approximately **2.16GB**. It contains APK material and should be treated as a future app/API endpoint reconnaissance input; some APKs in that archive may not yet be disassembled.

Local tooling installed into `/home/davidgn/.venvs/work` for crawler QA:

- `ruff 0.15.14` for fast linting.
- `pytest 9.0.3` was already present.
- `hypothesis 6.153.2` for parser/property fuzzing.
- `vulture 2.16` for dead-code audits.
- `pip-audit 2.10.0` for dependency vulnerability checks.

Baseline checks run after install:

```bash
/home/davidgn/.venvs/work/bin/ruff check \
  src/eslite_tw_spider.py src/cite_tw_spider.py src/books_tw_spider.py \
  src/kingstone_spider.py src/beninmarketplace_spider.py src/bookconekt_spider.py \
  src/chunghwa_hk_spider.py src/html_search_spider.py src/configurable_marketplace_spider.py

/home/davidgn/.venvs/work/bin/python -m py_compile \
  src/eslite_tw_spider.py src/cite_tw_spider.py src/books_tw_spider.py \
  src/kingstone_spider.py src/beninmarketplace_spider.py src/bookconekt_spider.py \
  src/chunghwa_hk_spider.py src/html_search_spider.py src/configurable_marketplace_spider.py

/home/davidgn/.venvs/work/bin/vulture \
  src/eslite_tw_spider.py src/cite_tw_spider.py src/books_tw_spider.py src/kingstone_spider.py \
  --min-confidence 80
```

Result: Ruff passed, py_compile passed, and Vulture returned no high-confidence findings for the new Taiwan spider set.

`pip-audit --progress-spinner off` initially found fixable vulnerabilities in the shared work venv (`idna 3.13`, `setuptools 69.5.1`). The venv was upgraded to `idna 3.16` and `setuptools 82.0.1`, then `pip-audit` was rerun successfully with **no known vulnerabilities found**. `pyz3950 2.5.1a1` remains unaudited because it is not resolvable on PyPI.

## 0.2 Next-Step Execution Pass (2026-05-27)

The recommended next steps from the BooksCompare/APK/tooling intake were executed in the same workspace.

Code and parser hardening completed:

- Added parser/property coverage in `tests/test_taiwan_spiders.py` for Books.com.tw, Kingstone, Eslite, Cite, and Bookconekt detail parsing.
- Fixed Books.com.tw publisher extraction to handle `sys_puballb` publisher links as well as the earlier `mid_publish` pattern.
- Hardened `Bookconekt` detail extraction so saved rows can include author, ISBN, publisher, publication date, category, condition, price, and seller comments when present in the product page.
- Normalized `src/jiushujie_7788_spider.py` to `territory="China (mainland)"`; the latest saved rows in `src/data/7788旧书_listings.jsonl` now use that territory.
- Added `--fail-on-nonzero` to `scripts/smoke_spider_matrix.py` and enabled it from `scripts/qa_recent_spiders.sh`, so QA now fails if any child spider exits nonzero or times out.
- Replaced the shared `BookListing` timestamp default with timezone-aware UTC generation, removing the Pydantic `datetime.utcnow()` deprecation warning.

Documentation and artifact controls added:

- `docs/TAIWAN_BOOKSCOMPARE_INTAKE_2026-05-27.md` maps BooksCompare provider names onto RBM output surfaces and registry expectations.
- `docs/ARTIFACT_POLICY_RBM_CRAWLERS_2026-05-27.md` documents which crawl artifacts should be committed versus treated as generated evidence.
- `scripts/inventory_apk_archive.sh` inventories `/home/davidgn/Downloads/apks.tar.xz` without extracting payloads.
- `docs/apk_inventory/apks_tar_xz_inventory_2026-05-27.csv` contains **47** archive entries plus a header row. The archive remains **2.1G** on disk and is the next app/API reconnaissance backlog.

Stricter QA command:

```bash
scripts/qa_recent_spiders.sh
```

Final networked result after enabling fail-on-nonzero behavior:

- Ruff passed for the recent Taiwan/triage spider set and the Taiwan/Bookconekt parser tests.
- `py_compile` passed for the same set.
- `pytest -q tests/test_taiwan_spiders.py`: **7 passed**.
- Vulture returned no high-confidence findings for the Taiwan parser set.
- Taiwan smoke (`logs/taiwan_bookscompare_intake_smoke_2026-05-27_qa.json`): **4 files, 0 nonzero exits, 0 timeouts**.
- Triage smoke (`logs/triage_matrix_after_hardening_2026-05-27_qa.json`): **5 files, 0 nonzero exits, 0 timeouts**; `7788旧书` added **3** rows and **3** cache entries under `China (mainland)`. `Bookconekt` fetched its pinned browse page, found 20 product links, and attempted 3 bounded detail harvests; all were restart-safe duplicates, so no new rows were saved.

Current measured output counts after this pass:

- `src/data/books_com_tw_listings.jsonl`: 28 rows.
- `src/data/kingstone_com_tw_listings.jsonl`: 119 rows.
- `src/data/eslite online_listings.jsonl`: 21 rows.
- `src/data/cite publishing_listings.jsonl`: 20 rows.
- `src/data/7788旧书_listings.jsonl`: 144 rows.

Remaining real next steps:

- Disassemble and ledger the 47-entry APK archive, prioritizing app-only targets and platforms whose web crawlers still rely on blocked/minimal detail pages.
- Add registry/reconciler rows for Cite / 城邦讀書花園 if the active registry does not already carry it.
- Promote `scripts/qa_recent_spiders.sh` into the regular fleet handoff/CI path once generated crawl artifacts are separated from source changes.

## 0.3 External Repo Leverage Pass (2026-05-27)

Additional public repositories were reviewed for reusable endpoint intelligence, parser fixtures, and workflow ideas. The detailed intake is in `docs/EXTERNAL_REPO_INTAKE_2026-05-27.md`.

Implemented follow-ups:

- Added `scripts/probe_buyback_endpoints.py` from the useful `buyback-scout` findings. It probes Momox, Rebuy, and Bonavendi fixed-price buyback/recommerce endpoints by ISBN/EAN and writes structured JSON. Momox requires `MOMOX_TOKEN` or `--momox-token`; no token is committed.
- Added `scripts/extract_book_text_signals.py` from the useful `BookHunter` OCR workflow ideas. It extracts ISBNs, publication years, edition/rare flags, title/author guesses, and a manual-review flag from OCR/copied text without requiring image/OCR dependencies.
- Added `tests/test_external_repo_utilities.py` for the new parser/probe helpers.
- Ran a live endpoint probe for `9783442481754`; evidence is in `logs/buyback_endpoint_probe_2026-05-27.json`. Momox was skipped because no token was configured, Rebuy returned HTTP 429, and Bonavendi returned HTTP 403 from this environment.
- Extended `scripts/qa_recent_spiders.sh` to include the new utility scripts and tests.
- Re-ran `scripts/qa_recent_spiders.sh` with network access after the external-repo utility additions: Ruff passed, `py_compile` passed, `pytest` reported **13 passed**, Taiwan smoke reported **4 files, 0 nonzero exits, 0 timeouts**, and triage smoke reported **5 files, 0 nonzero exits, 0 timeouts** with `7788旧书` adding **3** rows/cache entries.
- Classified `bookbargain` as a stale but useful India historical provider checklist only; do not port its Python 2/mechanize scrapers.
- Classified `isbn-book-finder` as a metadata fallback example only: Open Library plus Google Books, no marketplace endpoint value.
- Classified `BOOK_SWAP` as not useful for crawler endpoint intelligence because its ISBN estimate is mock/local database logic.

## 0.4 Rare-Book and ISBN Tooling Decisions (2026-05-27)

The follow-up search for additional open repositories/public endpoint intelligence produced three actionable ideas: AbeBooks/viaLibri/AddALL-style manual valuation links, optional `isbnlib` QA comparison, and Humble Bundle-style enrichment workflow notes. The detailed decision log is in `docs/EXTERNAL_REPO_INTAKE_2026-05-27.md`.

Implemented follow-ups:

- Added `scripts/generate_rare_book_links.py`.
  - Purpose: generate human-review links for AbeBooks, BookFinder, Biblio, Google Books, Open Library, AddALL, and viaLibri.
  - Input modes: structured CLI arguments (`--isbn`, `--title`, `--author`, `--year`) or raw OCR/copied text.
  - Boundary decision: this script emits links only. It does not scrape viaLibri/AddALL/BookFinder because viaLibri's own Search Link API documentation restricts automated searching and rare-book valuation usually needs human judgment for edition/condition.
  - Sample output: `logs/rare_book_links_sample_2026-05-27.json`.
- Added `scripts/evaluate_isbnlib.py`.
  - Purpose: compare RBM's local `src/isbn_utils.py` behavior against optional `isbnlib` behavior.
  - Boundary decision: keep the local helper as the spider runtime canonical helper; use `isbnlib` only as an optional QA/audit comparator.
  - `isbnlib 3.10.14` was installed into `/home/davidgn/.venvs/work` for evaluation.
  - Sample output: `logs/isbnlib_evaluation_2026-05-27.json`.
- Fixed `src/isbn_utils.py` based on that evaluation.
  - The comparator exposed a false-positive risk: an invalid exact 13-digit EAN could contain a valid-looking ISBN-10 substring, and the old local helper could convert that substring.
  - The helper now validates exact 13-digit and exact 10-digit inputs directly, and only scans longer blobs for valid ISBN-13 substrings. It no longer converts arbitrary ISBN-10 substrings inside invalid longer digit blobs.
  - Regression coverage was added in `tests/test_external_repo_utilities.py`.
- Re-ran the buyback endpoint probe with checksum-valid ISBN `9780306406157`; output is in `logs/buyback_endpoint_probe_2026-05-27_valid_isbn.json`. The network/service result was the same class of negative evidence: Momox skipped without token, Rebuy returned HTTP 429, Bonavendi returned HTTP 403.
- Re-ran `scripts/qa_recent_spiders.sh` after these additions. Result: Ruff passed, `py_compile` passed, `pytest` reported **21 passed**, Taiwan smoke reported **4 files, 0 nonzero exits, 0 timeouts**, and triage smoke reported **5 files, 0 nonzero exits, 0 timeouts** with `7788旧书` adding **3** rows/cache entries.

Decision rationale:

- AbeBooks API references are useful, but API credential/terms details need to be handled separately. Search/deep links are useful immediately without pretending we have productive API access.
- viaLibri is valuable for rare/out-of-print human review, but its documented restrictions make automated searches inappropriate in this crawler pass.
- AddALL, BookFinder, and Biblio are useful rare/used-book review surfaces, but they should start as manual links until a documented feed/API or permission path is found.
- `isbnlib` is a better audit oracle than a forced dependency: it helped find a bug while preserving RBM's dependency-light spider runtime.
- `humble-bundle-book-info` is a workflow reference, not an endpoint source to port now: the relevant idea is enrichment sequencing, not Humble Bundle crawling.

## 0.5 Retail Price Probe and APK Ledger Follow-Through (2026-05-27)

The remaining recommended follow-ups from the repo-change audit were completed:

- Added `docs/apk_inventory/apk_disassembly_ledger_2026-05-27.md`, converting the 47-entry APK archive inventory into a prioritized disassembly backlog.
  - Priority 1: book-first or known blocked targets such as BookChor, BookLal, BookLane, BookMamu, BooksPie, Pustak Market, Duozhuayu, Kongfz, Xianyu, Huanxiang, and Kitabu.
  - Priority 2: recommerce/buyback operators such as Momox, Medimops, Rebuy, Wer Zahlt Mehr, NadirKitap, and PangoBooks.
  - Priority 3: regional horizontal marketplace apps such as Jiji, Bikroy, Tonaton, Tokopedia, MercadoLibre, OLX/Slando, Allegro, Vinted, and Avito.
- Extended `docs/EXTERNAL_REPO_INTAKE_2026-05-27.md` with the additional endpoint/provider intelligence from `rayment/bookfind` and `MacFJA/BookRetriever`.
- Ran the new bounded retail probe for `9780140449136`; evidence is in `logs/retail_price_probe_2026-05-27.json`.
  - AbeBooks pricing returned structured offers: new `US$ 12.50`, used `US$ 6.87`.
  - BookFinder returned `no_offer` from this environment/parser run rather than an error.
- Kept cover-image fallback work deferred per instruction; no `bookcovers`/`bookcover-api` code was added in this pass.
- Reviewed the Buscalibre Colombia/Peru source changes and preserved the useful CLI compatibility while keeping the shared `HTMLSearchSpider` currency support explicit.
- Added explicit `HTMLSearchSpider` currency support so existing India-derived spiders keep the default `INR`, while Buscalibre Colombia emits `COP` and Buscalibre Peru emits `PEN`.
- Added `docs/STAGING_PLAN_2026-05-27.md` to separate source/docs/tests/scripts from generated crawl evidence before any commit is made.
- Staged source, docs, tests, and curated logs only; generated crawl cache/data artifacts remain unstaged.

Verification additions:

- Focused parser/utility tests: `29 passed`.
- Focused Ruff and `py_compile` checks passed for external-repo utilities, ISBN helpers, Taiwan parser tests, and Buscalibre changes.
- Focused Buscalibre smoke (`logs/buscalibre_smoke_2026-05-27.json`): **2 files, 0 nonzero exits, 0 timeouts**. Buscalibre Peru added 2 bounded rows; Buscalibre Colombia exited cleanly against pre-existing saved URLs.
- Full networked `scripts/qa_recent_spiders.sh` after the Buscalibre/currency pass: Ruff passed, `py_compile` passed, `pytest` reported **21 passed**, Taiwan smoke reported **4 files, 0 nonzero exits, 0 timeouts**, and triage smoke reported **5 files, 0 nonzero exits, 0 timeouts**.
- `git diff --check` still reports trailing whitespace in generated cached HTML only; source/test/doc changes are clean.

## 0.6 Follow-Up Execution: Retail Probe, BookFinder Diagnosis, Buscalibre, and Cite Wiring (2026-05-28)

Completed follow-up items 3 through 7 from the 2026-05-28 next-step list; APK disassembly work was explicitly deferred because it is being handled elsewhere.

- Kept non-bulky generated evidence from the artifact churn:
  - small smoke/probe logs under `logs/`;
  - `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.paths`.
  - Left bulky/generated payloads out of source history: `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.tar.zst`, `decompiled/**`, `src/cache/**`, and bulk `src/data/**`.
- Added fixture-backed AbeBooks pricing parser coverage with `tests/fixtures/abebooks_pricing_9780140449136.json`.
- Ran a three-ISBN retail probe batch:
  - Evidence: `logs/retail_price_probe_batch_2026-05-28.json`.
  - AbeBooks returned new/used price signals for all three ISBNs.
  - BookFinder returned AWS WAF JavaScript challenge pages for all three ISBNs.
- Saved the BookFinder live challenge snapshot:
  - `logs/bookfinder_live_9780140449136_2026-05-28.html`
  - `logs/bookfinder_live_9780140449136_2026-05-28.meta.json`
  - Updated `scripts/probe_retail_price_endpoints.py` so these pages report `error: AWS WAF JavaScript challenge` instead of `no_offer`.
- Rechecked Buscalibre Colombia/Peru:
  - `logs/buscalibre_co_pe_smoke_2026-05-28.json`: both wrappers exited 0 with no timeouts; Peru parsed 1 restart-safe item, Colombia parsed 0 because the first bounded hits were duplicates.
  - `logs/buscalibre_co_pe_smoke_limit10_2026-05-28.json`: Peru parsed 7 items; Colombia intermittently received HTTP 202 challenge/no-item HTML.
  - Selector inspection confirmed live Buscalibre result cards still expose `.producto`, `h3.nombre`, `/libro-...` links, author metadata, and price blocks. Peru rewrite is usable; Colombia should be treated as challenge-prone.
- Verified Cite / 城邦讀書花園 reconciliation wiring in the sibling `openrefine-reconciliation-service` repo:
  - `lib/reconcile_dispatch.py` maps `cite-tw` to `strategies_rbm_taiwan.process_rbm_taiwan_query`.
  - `lib/strategies_rbm_taiwan.py` contains the Cite search config for `https://www.cite.com.tw/search_result?keywords={query}&near=1`.
  - `lib/schemas/manifest.py` already includes `cite-tw`.
  - No duplicate registry/reconciler row was added.

This document serves as the master blueprint and handover guide for the completion of the global Saturation Scrape. Over the course of the expansion phase, the fleet has been extended to provide authoritative coverage across **15 distinct global regions**, harmonizing the crawling, identity, and reconciliation layers into a unified ecosystem.

## 1. Global Fleet Coverage (Achieved)

The expansion prioritized underserved and high-friction regions, utilizing a mix of standard DOM parsing, Headless/Playwright execution, and API ingestion to bypass WAFs and regional blocks.

| Region | Primary Targets Secured | Notes / Bypass Strategy |
| :--- | :--- | :--- |
| **Sub-Saharan Africa (West/Central)** | `preownedbooks-ng`, `cityreads-gh`, `begglire-sn`, `gabonlivre-ga` | Heavy reliance on Shopify/WooCommerce API extraction and Next.js hydration data to bypass low-bandwidth timeouts. |
| **Sub-Saharan Africa (South)** | `exclusivebooks-za`, `bookworldzambia-zm`, `houseofbookszim-zw`, `namibiabooks-na` | Combination of AJAX API reversal and localized DOM scraping. |
| **MENA / West Asia** | 10+ targets across SA, AE, SY, PS, LY, IQ, IR | Used `curl_cffi` to bypass Salla platform fingerprinting (Saudi Arabia) and handled Farsi/Arabic localized DOMs. |
| **East Asia** | `kongfz-cn`, `dangdang-cn`, `honto-jp` | **High Friction:** `Kongfz.com` (China) required Playwright-based rendering and localized UTF-8 queries (`哈利波特`) to bypass advanced bot protection. |
| **Southeast Asia** | `bookurve-my`, `bookxcess-my`, `bukukita-id`, `bookshelf-ph`, `thryft-sg` | Leveraged `script#web-pixels-manager-setup` JSON extraction (BookXcess) and `__NEXT_DATA__` (Bookurve). `curl_cffi` used for `Bukukita` (Indonesia) to handle TLS handshakes. |
| **Oceania** | `angusrobertson-au`, `qbd-au`, `bookhero-nz`, `whitcoulls-nz` | `Whitcoulls` required massive `window.category` script extraction due to complex client-side rendering. |
| **Eastern Europe** | `knihobot-cz`, `carturesti-ro`, `raamatukoi-ee`, `knizhenpazar-bg`, `mybook-lv` | Fixed localized path routing (`/otsing` vs `/search`) and deployed Playwright for JavaScript-heavy Romanian targets. |
| **South America** | `buscalibre-br`, `buscalibre-cl` | Extracted structural item data via HTML parsing across regional subdomains. |
| **Nordics** | `bookis-no` | Bypassed strict Cloudflare Turnstile blocks using internal Next.js build IDs (`_next/data/...`). |
| **Caucasus / Central Asia** | `books-ge`, `uzum-uz`, `kitap-kz`, `price-books-kg` | Bypassed regional TLS drops using specific `impersonate` headers and GraphQL reversals (Uzum). |
| **South Asia** | `bookchor-in`, `rokomari-bd`, `libertybooks-pk`, `daraz-bd` | Extensive use of mobile API endpoints and `PlaywrightSearchSpider` to render heavy React interfaces. |

## 2. Technical Architecture & Bypass Strategies

The core architecture (`BaseSpider`) was significantly enhanced to handle the variance in global platforms. Codex should adhere to the following established patterns when addressing the remaining "triage" platforms.

### A. Next.js Hydration Extraction
Instead of parsing the DOM, many modern sites (e.g., Bookurve, Bookis) store the complete product data in a JSON blob.
**Pattern:**
```python
selectors={'container': 'script#__NEXT_DATA__'}
# Inside _parse_item:
data = json.loads(item_soup.string)
results = data.get('props', {}).get('pageProps', {}) # Traverse to products
```

### B. Shopify Pixel Manager Extraction
When `products.json` is blocked (403 Forbidden), Shopify stores emit product data to their analytics tracker.
**Pattern:**
```python
selectors={'container': 'script#web-pixels-manager-setup'}
# Inside _parse_item:
match = re.search(r'\"events\"\s*:\s*\"(.*?)\"\s*,\s*\"publish\"', item_soup.string)
events_json_str = codecs.decode(match.group(1), 'unicode_escape')
events_data = json.loads(events_json_str)
# Filter for 'search_submitted' or 'page_viewed'
```

### C. Advanced TLS & WAF Bypass (`curl_cffi`)
For sites that drop connections (e.g., Bukukita, Salla platforms in Saudi Arabia), the standard `requests` or `httpx` libraries will fail (`_ssl.c:1012: The handshake operation timed out`).
**Pattern:** Override `_fetch_page` in the spider to use `curl_cffi`:
```python
from curl_cffi import requests as curlex
r = curlex.get(url, impersonate="chrome110", timeout=30, verify=False)
```

### D. Playwright DOM Rendering
When data is fetched asynchronously via protected XHRs (e.g., Kongfz.com), use the `PlaywrightSearchSpider` base class. It handles anti-bot arguments and waits for specific selectors to appear in the DOM before extracting.

## 3. Global Synchronization State

The three primary repositories are now synchronized and cross-linked:

1.  **`unipress-parser-crawler-family` (Identity DB):**
    *   `unipress_site_definitions.db` contains 2,610+ validated targets.
    *   All new expansion targets are marked as `verified_functional`.
2.  **`rbm_crawlers` (Crawling Engine):**
    *   Houses 50+ regional spiders inheriting from `HTMLSearchSpider`, `PlaywrightSearchSpider`, `WooCommerceAPISpider`, and `ShopifyAPISpider`.
    *   All spiders are configured to dump `_listings.jsonl` files for restart-safe caching.
3.  **`openrefine-reconciliation-service` (Reconciliation Hub):**
    *   The `lib/reconcile_dispatch.py` acts as the master router.
    *   Dedicated regional strategy files (e.g., `strategies_rbm_sea_expansion.py`, `strategies_rbm_oceania.py`) map OpenRefine queries back to the specific extraction logic.

## 4. Handover to Codex

The "Saturation Scrape" is structurally complete. The core architecture is hardened, and the geographical spread covers all critical global markets. 

**Next Steps for Codex / Future Agents:**
1.  **Triage Targets:** Several targets in the DB remain in `verified_triage` status (e.g., *Chung Hwa Book Co* in HK, *7788* in China, *BeninMarketPlace*). These require custom session-handling, captcha-solving, or login flows.
2.  **Long-Running Execution:** The spiders are designed for headless batch execution. Deploy the fleet via the scheduler (`reconcile_dispatch.py`) against the massive ISBN lot (`massive_international_exhaustive.csv`).
3.  **Data Ingestion:** Route the resulting `.jsonl` artifacts into the OpenRefine cluster for final entity deduplication.

## 5. External GitHub Repository Intake (2026-05-27)

Reviewed requested public repositories for reusable endpoint intelligence, parser patterns, and product ideas relevant to the regional buyback/price-comparison crawler work. Duplicate `flyingfinger1/buyback-scout` entry was evaluated once.

| Repository | Usefulness | Actionable takeaways |
| :--- | :--- | :--- |
| `andrewmmc/bookscompare` | **High** | Best direct source. Active TypeScript monorepo for Taiwan ISBN price comparison. Contains concrete Cloudflare Worker providers for `books.com.tw`, `kingstone.com.tw`, `cite.com.tw`, and `eslite.com`, including tested HTML/API parsers, fan-out service, cache/error model, barcode-search mobile flow, and shared response contracts. Mine first when hardening Taiwan coverage or adding cross-source price offers. |
| `flyingfinger1/buyback-scout` | **High for German buyback** | Small Node proxy with live endpoint clues for Momox, Rebuy, and Bonavendi. Useful endpoints: `api.momox.de/api/v4/media/offer/?ean=...`, `www.rebuy.de/verkaufen/api/bulk-isbn`, `api.bonavendi.de/rest/v2/products/{ean}` followed by `/products/{uuid}/buyOffers?maxAgeOfOfferInMinutes=-1`. Treat the embedded Momox token as public/reverse-engineered and volatile; do not vendor it blindly. |
| `ravila4/abebooks` | **High as bounded probe intelligence** | Exposes the AbeBooks pricing-service form shape for ISBN best-new/best-used pricing. Ported as a bounded endpoint probe, not a fleet spider. |
| `rayment/bookfind` | **High as parser/URL intelligence** | Documents BookFinder ISBN search parameters and HTML offer markers. Ported as parser coverage and a bounded probe path. |
| `MacFJA/BookRetriever` | **Medium/High as provider universe** | Useful source checklist and provider implementation references for AbeBooks, eBay, OpenLibrary, Google Books, LOC, OCLC, ISBNdb, LibraryThing, and others. Many providers require credentials or selector revalidation. |
| `IAmM3ta/BookHunter` | **Medium** | Useful product/field workflow reference, not a crawler source. Python prototype has OCR preprocessing, ISBN/year/edition regex extraction, yellowing condition signal, valuation decision schema, and haptic verdict model. Good for APK/mobile camera workflows and thrift-field capture, but valuation is explicitly mock/planned. |
| `GingerNinja23/bookbargain` | **Medium/Low** | Older Python 2/Flask Indian price-comparison API. Useful mainly as a historical list of India commerce targets and simple per-store module structure: Flipkart, Amazon India, Infibeam, uRead, Crossword, Landmark, Paytm. Many selectors/endpoints are likely stale; also includes a robots-risk note for Infibeam, so use only as reconnaissance. |
| `tripathiaman9354/isbn-book-finder` | **Low/Medium** | Spring Boot ISBN metadata fallback example. Confirms OpenLibrary `api/books?bibkeys=ISBN:{isbn}&format=json&jscmd=data` plus Google Books `volumes?q=isbn:{isbn}` enrichment flow. Useful for normalizing metadata fallback, not useful for buyback prices or marketplace crawling. |
| `prajan1110/BOOK_SWAP` | **Low** | Full-stack used-book marketplace skeleton. Useful schema concepts for listings, conditions, verification status, orders, donations, bulk partnerships. Its `/api/isbn/:isbn/estimate` endpoint is mock math against stored `originalPrice`, so it should not be treated as market-price intelligence. |

Recommended follow-up: port only endpoint and parser intelligence, not whole projects. First mine `bookscompare` Taiwan providers and tests, then test `buyback-scout` German buyback endpoints against a small ISBN set with rate limits and explicit volatile-endpoint handling.

Implemented follow-up in `rbm_crawlers`:

- Hardened Taiwan parser fields from `bookscompare` patterns: Books.com.tw product type, Kingstone product type, Eslite ebook/print classification, and Cite `YYYYMMDD` publication-date normalization.
- Hardened the existing `scripts/probe_buyback_endpoints.py` ISBN/EAN normalization so ISBN-10 inputs are converted to valid ISBN-13/EAN values before probing Momox, Rebuy, and Bonavendi. The probe continues to avoid committing any Momox token; `MOMOX_TOKEN` remains opt-in via environment/CLI.
- Added `src/isbn_metadata_lookup.py`, a direct ISBN metadata enricher using OpenLibrary Books API first and Google Books fallback/enrichment second. Source failures are captured per source so OpenLibrary results survive Google Books rate limits.
- Added targeted tests for Taiwan parser hardening, buyback ISBN normalization, and ISBN metadata merge/partial-failure behavior.

Verification:

- `python -m pytest tests/test_taiwan_spiders.py tests/test_external_repo_utilities.py tests/test_isbn_metadata_lookup.py`: **17 passed**.
- `python -m ruff check` over touched source/tests: **passed**.
- `python -m py_compile` over touched source modules: **passed**.
- Live buyback probe for `9780140449136`: Momox was skipped because no token is configured, Rebuy returned structured `429 Too Many Requests`, and Bonavendi returned structured `403 Forbidden`; utility records these outcomes instead of aborting.
- Live ISBN metadata lookup for `9780140449136`: OpenLibrary returned metadata; Google Books returned structured `429 Too Many Requests`; utility preserved OpenLibrary output and recorded the Google error.
