#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PY="${PYTHON:-/home/davidgn/.venvs/work/bin/python}"
RUFF="${RUFF:-/home/davidgn/.venvs/work/bin/ruff}"
VULTURE="${VULTURE:-/home/davidgn/.venvs/work/bin/vulture}"
PIP_AUDIT="${PIP_AUDIT:-/home/davidgn/.venvs/work/bin/pip-audit}"

cd "$ROOT"

FILES=(
  src/eslite_tw_spider.py
  src/cite_tw_spider.py
  src/books_tw_spider.py
  src/kingstone_spider.py
  src/beninmarketplace_spider.py
  src/bookconekt_spider.py
  src/chunghwa_hk_spider.py
  src/jiushujie_7788_spider.py
  src/html_search_spider.py
  src/configurable_marketplace_spider.py
)
SCRIPT_FILES=(
  scripts/probe_buyback_endpoints.py
  scripts/extract_book_text_signals.py
  scripts/generate_rare_book_links.py
  scripts/evaluate_isbnlib.py
)

"$RUFF" check "${FILES[@]}" "${SCRIPT_FILES[@]}" tests/test_taiwan_spiders.py tests/test_external_repo_utilities.py
"$PY" -m py_compile "${FILES[@]}" "${SCRIPT_FILES[@]}" tests/test_taiwan_spiders.py tests/test_external_repo_utilities.py
"$PY" -m pytest -q tests/test_taiwan_spiders.py tests/test_external_repo_utilities.py
"$VULTURE" src/eslite_tw_spider.py src/cite_tw_spider.py src/books_tw_spider.py src/kingstone_spider.py --min-confidence 80

"$PY" scripts/smoke_spider_matrix.py \
  src/books_tw_spider.py \
  src/kingstone_spider.py \
  src/eslite_tw_spider.py \
  src/cite_tw_spider.py \
  --timeout 60 --workers 2 --limit-pages 1 --limit-items 3 \
  --fail-on-nonzero \
  --json-out logs/taiwan_bookscompare_intake_smoke_2026-05-27_qa.json

"$PY" scripts/smoke_spider_matrix.py \
  src/chunghwa_hk_spider.py \
  src/beninmarketplace_spider.py \
  src/jiushujie_7788_spider.py \
  src/bookconekt_spider.py \
  src/la_friperie_du_livre_spider.py \
  --timeout 60 --workers 2 --limit-pages 1 --limit-items 3 \
  --fail-on-nonzero \
  --json-out logs/triage_matrix_after_hardening_2026-05-27_qa.json

if [[ "${RUN_PIP_AUDIT:-0}" == "1" ]]; then
  "$PIP_AUDIT" --progress-spinner off
fi
