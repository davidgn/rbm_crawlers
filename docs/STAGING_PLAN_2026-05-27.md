# Staging Plan: 2026-05-27 External Intel / QA / Buscalibre Pass

This plan separates source changes from generated crawl artifacts in the current dirty worktree.

## Source Commit Scope

Stage source, tests, scripts, and compact documentation:

- `.gitignore`
- `docs/ARTIFACT_POLICY_RBM_CRAWLERS_2026-05-27.md`
- `docs/EXTERNAL_REPO_INTAKE_2026-05-27.md`
- `docs/STAGING_PLAN_2026-05-27.md`
- `docs/TAIWAN_BOOKSCOMPARE_INTAKE_2026-05-27.md`
- `docs/apk_inventory/apk_disassembly_ledger_2026-05-27.md`
- `docs/apk_inventory/apks_tar_xz_inventory_2026-05-27.csv`
- `docs/imports/regional_fleet_saturation_scrape_final_report.md`
- `scripts/evaluate_isbnlib.py`
- `scripts/extract_book_text_signals.py`
- `scripts/generate_rare_book_links.py`
- `scripts/inventory_apk_archive.sh`
- `scripts/probe_buyback_endpoints.py`
- `scripts/probe_retail_price_endpoints.py`
- `scripts/qa_recent_spiders.sh`
- `scripts/smoke_spider_matrix.py`
- `scripts/validate_triage_outputs.py`
- changed crawler source files under `src/`
- `tests/`

## Leave Unstaged By Default

Generated runtime evidence should stay out of the source commit unless a separate data snapshot is requested:

- `src/cache/**`
- `src/data/**`
- most `logs/**`

Curated logs that may be useful for handoff but should not be mixed into a source commit:

- `logs/buscalibre_smoke_2026-05-27.json`
- `logs/buyback_endpoint_probe_2026-05-27.json`
- `logs/buyback_endpoint_probe_2026-05-27_valid_isbn.json`
- `logs/isbnlib_evaluation_2026-05-27.json`
- `logs/rare_book_links_sample_2026-05-27.json`
- `logs/taiwan_bookscompare_intake_smoke_2026-05-27_qa.json`
- `logs/triage_matrix_after_hardening_2026-05-27_qa.json`

## Verification

- Focused Buscalibre smoke: 2 files, 0 nonzero exits, 0 timeouts.
- Full `scripts/qa_recent_spiders.sh` with network access: passed.
- Latest full pytest count from the QA script: 21 passed.
- Taiwan smoke: 4 files, 0 nonzero exits, 0 timeouts.
- Triage smoke: 5 files, 0 nonzero exits, 0 timeouts.

## 2026-05-28 Follow-Up Staging

Keep:

- Compact 2026-05-28 probe/smoke logs.
- `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.paths`, because it is a small manifest of generated crawl artifacts.

Leave unstaged:

- `artifacts/generated_snapshots/generated_crawl_artifacts_2026-05-28.tar.zst`.
- `decompiled/**`.
- `src/cache/**`.
- bulk `src/data/**`.
