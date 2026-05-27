# RBM Crawler Artifact Policy (2026-05-27)

This repo intentionally produces crawl artifacts during smoke and harvest runs. Keep code diffs and data/cache churn separate when possible.

## Commit Normally

- Spider/source code in `src/*.py`.
- Reusable scripts in `scripts/*.py` and `scripts/*.sh`.
- Human handoff/audit docs in `docs/**/*.md`.
- Small deterministic parser fixtures and tests in `tests/**`.
- Smoke JSON reports only when they document a handoff milestone.

## Treat as Generated

- `src/cache/**`: HTML/API response caches. Useful for restart safety and parser work, but high-churn.
- `src/data/*_listings.jsonl`: crawler output rows. Commit only when the row set is part of a checkpoint or evidence bundle.
- `logs/*.json`: smoke reports. Keep final/meaningful matrix logs; avoid committing failed intermediate retries unless they explain a decision.
- APK disassembly output: keep out of the repo unless reduced to small endpoint/evidence summaries.

## Recommended Workflow

1. Run focused smoke tests with `--limit-pages` and `--limit-items`.
2. Review code diff separately from `src/cache/**`, `src/data/**`, and `logs/**`.
3. If committing, stage code/tests/docs first.
4. Stage generated artifacts only when they are named in a handoff report.
5. For large app-tier inputs, keep the archive under `~/Downloads` or an external dump area and write a small inventory CSV/doc into `docs/`.

## Current Large External Input

- `/home/davidgn/Downloads/apks.tar.xz`
- Size observed: approximately 2.16GB.
- Purpose: future app/API endpoint reconnaissance. Some APKs in the archive may not yet be disassembled.
