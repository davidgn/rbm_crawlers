# Taiwan BooksCompare Intake (2026-05-27)

## Source

Reference repository: `https://github.com/andrewmmc/bookscompare`

The repo is a Taiwan price-comparison app, not a global marketplace crawler. Its useful parts for RBM are endpoint choices, parser patterns, and provider/test structure.

## Implemented RBM Spiders

| RBM Spider | Output Platform | Registry Surface | Source Pattern |
| :--- | :--- | :--- | :--- |
| `src/books_tw_spider.py` | `Books.com.tw` | `博客來` / `https://www.books.com.tw/` | `https://search.books.com.tw/search/query/cat/all/sort/1/v/0/page/{page}/spell/3/key/{query}` |
| `src/kingstone_spider.py` | `Kingstone.com.tw` | `金石堂` / `https://www.kingstone.com.tw/` | `https://www.kingstone.com.tw/search/key/{query}/dis/list?` |
| `src/eslite_tw_spider.py` | `Eslite Online` | `誠品線上` / `https://www.eslite.com/` | `https://athena.eslite.com/api/v2/search?q={query}` |
| `src/cite_tw_spider.py` | `Cite Publishing` | `城邦讀書花園` | `https://www.cite.com.tw/search_result?keywords={query}` |

## Reconciliation Notes

- Treat `Books.com.tw` as the crawler/output alias for registry row `博客來`.
- Treat `Kingstone.com.tw` as the crawler/output alias for registry row `金石堂`.
- Treat `Eslite Online` as the crawler/output alias for registry row `誠品線上`.
- Treat `Cite Publishing` as the crawler/output alias for `城邦讀書花園`; if the active canonical registry lacks a Cite row, add it as Taiwan / East Asia / weak-fit or book-forward retail layer before reconciliation.

## Verification

Smoke report: `logs/taiwan_bookscompare_intake_smoke_2026-05-27_v2.json`

Command:

```bash
/home/davidgn/.venvs/work/bin/python scripts/smoke_spider_matrix.py \
  src/books_tw_spider.py \
  src/kingstone_spider.py \
  src/eslite_tw_spider.py \
  src/cite_tw_spider.py \
  --timeout 60 --workers 2 --limit-pages 1 --limit-items 3 \
  --json-out logs/taiwan_bookscompare_intake_smoke_2026-05-27_v2.json
```

Result: 4 files, 0 nonzero exits, 0 timeouts.

## Parser QA

Focused parser/fuzz tests live in `tests/test_taiwan_spiders.py`.

Run:

```bash
/home/davidgn/.venvs/work/bin/python -m pytest -q tests/test_taiwan_spiders.py
```
